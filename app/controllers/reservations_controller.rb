class ReservationsController < ApplicationController
  before_action :find_activitiy

   # GET /users
   def index
    @reservations = Reservation.all
    render json: @reservations
  end

  # POST /reservations
  def create
    @reservation = current_user.reservations.build(reservation_params.merge({activity_id:@activity.id}))
    if @reservation.save
      render json: @reservation, status: 200
    else
      render json: {errors: @reservation.erros.full_messages}, status: :unprocessable_entity
    end
  end

  private
    def find_activitiy
      @activity=Activity.find_by_id(params[:activity_id])
    end

    # Only allow a list of trusted parameters through.
    def reservation_params
      params.require(:reservation).permit(:activity_id, :date)
    end
end

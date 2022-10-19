class ReservationsController < ApplicationController
  before_action :find_activity

   # GET /users
   def index
    @reservations = Reservation.all
    render json: @reservations
   end

   def show
    reservation=find_reservation
    render json: reservation
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

  def destroy
    reservation=find_reservation
    reservation.destroy
    head :no_content
  end

  def update
    reservation=find_reservation
    reservation.update(reservation_params)
    render json: reservation
  end

  private
    def find_activity
      @activity=Activity.find_by_id(params[:activity_id])
    end

    def find_reservation
      Reservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservation_params
      params.permit(:date)
    end
end

# SummerTides Festival Data Dictionary

## Artists
- artist_id: Primary key for each artist.
- artist_name: Name of the performing artist or band.
- genre: Music genre of the artist.
- origin_country: Country where the artist is based.
- primary_contact_email: Contact email for bookings.
- performance_style: Description of the performance format.

## Stages
- stage_id: Primary key for each festival stage.
- stage_name: Stage name used in schedules.
- capacity: Maximum attendee capacity for the stage.
- location: Physical location of the stage.

## Sponsors
- sponsor_id: Primary key for each sponsor.
- sponsor_name: Sponsor organization name.
- sponsorship_level: Tier of sponsorship.
- contribution_amount: Cash contribution amount.
- contact_email: Sponsorship contact email.

## StageSponsors
- stage_sponsor_id: Primary key for the stage-sponsor relationship.
- stage_id: Foreign key to the stage.
- sponsor_id: Foreign key to the sponsor.
- sponsorship_share: Percentage of sponsorship support.

## Performances
- performance_id: Primary key for each scheduled performance.
- artist_id: Foreign key to the performing artist.
- stage_id: Foreign key to the stage.
- performance_day: Day of the festival.
- start_time: Scheduled start time.
- end_time: Scheduled end time.
- is_headliner: Flag for headline acts.
- ticket_price: Ticket price for the performance.

## Attendees
- attendee_id: Primary key for each attendee.
- first_name: Attendee first name.
- last_name: Attendee last name.
- email: Unique attendee email.
- phone: Unique contact phone number.
- ticket_type: Ticket category.
- purchase_date: Date the ticket was purchased.
- ticket_price: Total amount paid for the ticket.
- checked_in: Attendance check-in status.

## Vendors
- vendor_id: Primary key for each vendor.
- vendor_name: Vendor business name.
- category: Vendor business category.
- booth_number: Assigned booth location.
- contact_person: Vendor contact person.
- booth_rent: Booth rental fee.

## VendorSales
- sale_id: Primary key for each vendor sale transaction.
- vendor_id: Foreign key to the vendor.
- sale_date: Date of the sale.
- item_sold: Name of the item sold.
- quantity: Number of items sold.
- sale_amount: Total revenue for the sale.

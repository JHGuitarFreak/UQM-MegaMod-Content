-- Initialise the game properties to 0 with bit widths and revision markers
-- This script is executed at runtime and every new game/load

-- WARNING BEFORE EDITING!

-- Everything in this file MUST remain in the exact order defined below
-- to preserve compatibility with Vanilla UQM and MegaMod saves.

-- The order of these states determines the bit layout of the save files.
-- Changing the order, adding new states in the middle, or removing states
-- will shift the bit positions of all subsequent states.

-- THIS WILL BREAK SAVE COMPATIBILITY!
-- Previous saves will refuse to load most of the time but in the event they do load
-- they will do so with with the wrong values and new saves will be unreadable by
-- unmodified versions of MegaMod

-- If you want to add new states then they must be to the end of this file
-- with an appropriate revision increase before adding the new gamestate.

-- EXAMPLE USAGE:

-- state.prop.setrev(revision_number)
--                         ^
--                     Revision marker
--                     (states after this belong to this revision)

-- state.prop.init("STATE_NAME", initial_value, bit_width)
--                       ^             ^              ^
--                   State name   Starting value   Number of bits


-- Revision 0: Core UQM v0.8.0

-- Shofixti states
state.prop.init("SHOFIXTI_VISITS", 0, 3)
state.prop.init("SHOFIXTI_STACK1", 0, 2)
state.prop.init("SHOFIXTI_STACK2", 0, 3)
state.prop.init("SHOFIXTI_STACK3", 0, 2)
state.prop.init("SHOFIXTI_KIA", 0, 1)
state.prop.init("SHOFIXTI_BRO_KIA", 0, 1)
state.prop.init("SHOFIXTI_RECRUITED", 0, 1)

state.prop.init("SHOFIXTI_MAIDENS", 0, 1) -- Did you find the babes yet?
state.prop.init("MAIDENS_ON_SHIP", 0, 1)
state.prop.init("BATTLE_SEGUE", 0, 1)
-- Set to 0 in init_xxx_comm() if communications directly
-- follows an encounter.
-- Set to 1 in init_xxx_comm() if the player gets to decide
-- whether to attack or talk.
-- Set to 1 in communication when battle follows the
-- communication. It is still valid when uninit_xxx_comm() gets
-- called after combat or communication.
state.prop.init("PLANETARY_LANDING", 0, 1)
state.prop.init("PLANETARY_CHANGE", 0, 1)
-- Flag set to 1 when the planet information for the current
-- world is changed since it was last saved to the starinfo.dat
-- file. Set when picking up bio, mineral, or energy nodes.
-- When there's no current world, it should be 0.

-- Spathi states
state.prop.init("SPATHI_VISITS", 0, 3)
state.prop.init("SPATHI_HOME_VISITS", 0, 3)
state.prop.init("FOUND_PLUTO_SPATHI", 0, 2)
-- 0 - Haven't met Fwiffo.
-- 1 - Met Fwiffo on Pluto, now talking to him.
-- 2 - Met Fwiffo on Pluto, after dialog.
-- 3 - Met Fwiffo, and have reported to the Safe Ones on
--     the Spathi moon that he was either killed, or that
--     you have him on board.
state.prop.init("SPATHI_SHIELDED_SELVES", 0, 1)
state.prop.init("SPATHI_CREATURES_EXAMINED", 0, 1)
state.prop.init("SPATHI_CREATURES_ELIMINATED", 0, 1)
state.prop.init("UMGAH_BROADCASTERS", 0, 1)
state.prop.init("SPATHI_MANNER", 0, 2)
state.prop.init("SPATHI_QUEST", 0, 1)
state.prop.init("LIED_ABOUT_CREATURES", 0, 2)
state.prop.init("SPATHI_PARTY", 0, 1)
state.prop.init("KNOW_SPATHI_PASSWORD", 0, 1)

state.prop.init("ILWRATH_HOME_VISITS", 0, 3)
state.prop.init("ILWRATH_CHMMR_VISITS", 0, 1)

state.prop.init("ARILOU_SPACE", 0, 1)
-- 0 if the periodically opening QuasiSpace portal is
-- closed or closing.
-- 1 if the periodically opening QuasiSpace portal is
-- open or opening.
state.prop.init("ARILOU_SPACE_SIDE", 0, 2)
-- 0 if in HyperSpace and not just emerged from the
-- periodically opening QuasiSpace portal.
-- 1 if in HyperSpace and just emerged from the periodically
-- QuasiSpace portal (still on the portal).
-- 2 if in QuasiSpace and just emerged from the periodically
-- opening portal (still on the portal).
-- 3 if in QuasiSpace and not just emerged from the
-- periodically opening portal.
state.prop.init("ARILOU_SPACE_COUNTER", 0, 4)
-- Keeps track of how far the periodically opening QuasiSpace
-- portal is open. (This determines the image)
-- 0 <= ARILOU_SPACE_COUNTER <= 9
-- 0 means totally closed.
-- 9 means completely open.

state.prop.init("LANDER_SHIELDS", 0, 4)

state.prop.init("MET_MELNORME", 0, 1)
state.prop.init("MELNORME_RESCUE_REFUSED", 0, 1)
state.prop.init("MELNORME_RESCUE_COUNT", 0, 3)
state.prop.init("TRADED_WITH_MELNORME", 0, 1)
state.prop.init("WHY_MELNORME_PURPLE", 0, 1)
state.prop.init("MELNORME_CREDIT0", 0, 8)
state.prop.init("MELNORME_CREDIT1", 0, 8)
state.prop.init("MELNORME_BUSINESS_COUNT", 0, 2)
state.prop.init("MELNORME_YACK_STACK0", 0, 2)
state.prop.init("MELNORME_YACK_STACK1", 0, 2)
state.prop.init("MELNORME_YACK_STACK2", 0, 4)
state.prop.init("MELNORME_YACK_STACK3", 0, 3)
state.prop.init("MELNORME_YACK_STACK4", 0, 2)
state.prop.init("WHY_MELNORME_BLUE", 0, 1)
state.prop.init("MELNORME_ANGER", 0, 2)
state.prop.init("MELNORME_MIFFED_COUNT", 0, 2)
state.prop.init("MELNORME_PISSED_COUNT", 0, 2)
state.prop.init("MELNORME_HATE_COUNT", 0, 2)

state.prop.init("PROBE_MESSAGE_DELIVERED", 0, 1)
state.prop.init("PROBE_ILWRATH_ENCOUNTER", 0, 1)

state.prop.init("STARBASE_AVAILABLE", 0, 1)
state.prop.init("STARBASE_VISITED", 0, 1)
state.prop.init("RADIOACTIVES_PROVIDED", 0, 1)
state.prop.init("LANDERS_LOST", 0, 1)
state.prop.init("GIVEN_FUEL_BEFORE", 0, 1)

state.prop.init("AWARE_OF_SAMATRA", 0, 1)
state.prop.init("YEHAT_CAVALRY_ARRIVED", 0, 1)
state.prop.init("URQUAN_MESSED_UP", 0, 1)

state.prop.init("MOONBASE_DESTROYED", 0, 1)
state.prop.init("WILL_DESTROY_BASE", 0, 1)

state.prop.init("WIMBLIS_TRIDENT_ON_SHIP", 0, 1)
state.prop.init("GLOWING_ROD_ON_SHIP", 0, 1)

state.prop.init("KOHR_AH_KILLED_ALL", 0, 1)

state.prop.init("STARBASE_YACK_STACK1", 0, 1)

state.prop.init("DISCUSSED_PORTAL_SPAWNER", 0, 1)
state.prop.init("DISCUSSED_TALKING_PET", 0, 1)
state.prop.init("DISCUSSED_UTWIG_BOMB", 0, 1)
state.prop.init("DISCUSSED_SUN_EFFICIENCY", 0, 1)
state.prop.init("DISCUSSED_ROSY_SPHERE", 0, 1)
state.prop.init("DISCUSSED_AQUA_HELIX", 0, 1)
state.prop.init("DISCUSSED_CLEAR_SPINDLE", 0, 1)
state.prop.init("DISCUSSED_ULTRON", 0, 1)
state.prop.init("DISCUSSED_MAIDENS", 0, 1)
state.prop.init("DISCUSSED_UMGAH_HYPERWAVE", 0, 1)
state.prop.init("DISCUSSED_BURVIX_HYPERWAVE", 0, 1)
state.prop.init("SYREEN_WANT_PROOF", 0, 1)
state.prop.init("PLAYER_HAVING_SEX", 0, 1)
state.prop.init("MET_ARILOU", 0, 1)
state.prop.init("DISCUSSED_TAALO_PROTECTOR", 0, 1)
state.prop.init("DISCUSSED_EGG_CASING0", 0, 1)
state.prop.init("DISCUSSED_EGG_CASING1", 0, 1)
state.prop.init("DISCUSSED_EGG_CASING2", 0, 1)
state.prop.init("DISCUSSED_SYREEN_SHUTTLE", 0, 1)
state.prop.init("DISCUSSED_VUX_BEAST", 0, 1)
state.prop.init("DISCUSSED_DESTRUCT_CODE", 0, 1)
state.prop.init("DISCUSSED_URQUAN_WARP", 0, 1)
state.prop.init("DISCUSSED_WIMBLIS_TRIDENT", 0, 1)
state.prop.init("DISCUSSED_GLOWING_ROD", 0, 1)

state.prop.init("ATTACKED_DRUUGE", 0, 1)

state.prop.init("NEW_ALLIANCE_NAME", 0, 2)

state.prop.init("PORTAL_COUNTER", 0, 4)
-- Set to 1 when the player opens a QuasiSpace portal.
-- It will then be increased to 10, at which time
-- the portal is completely open. (This determines the image).

state.prop.init("BURVIXESE_BROADCASTERS", 0, 1)
state.prop.init("BURV_BROADCASTERS_ON_SHIP", 0, 1)

state.prop.init("UTWIG_BOMB", 0, 1)
state.prop.init("UTWIG_BOMB_ON_SHIP", 0, 1)

state.prop.init("AQUA_HELIX", 0, 1)
state.prop.init("AQUA_HELIX_ON_SHIP", 0, 1)

state.prop.init("SUN_DEVICE", 0, 1)
state.prop.init("SUN_DEVICE_ON_SHIP", 0, 1)

state.prop.init("TAALO_PROTECTOR", 0, 1)
state.prop.init("TAALO_PROTECTOR_ON_SHIP", 0, 1)

state.prop.init("SHIP_VAULT_UNLOCKED", 0, 1)
state.prop.init("SYREEN_SHUTTLE", 0, 1)

state.prop.init("PORTAL_KEY", 0, 1)
state.prop.init("PORTAL_KEY_ON_SHIP", 0, 1)

state.prop.init("VUX_BEAST", 0, 1)
state.prop.init("VUX_BEAST_ON_SHIP", 0, 1)

state.prop.init("TALKING_PET", 0, 1)
state.prop.init("TALKING_PET_ON_SHIP", 0, 1)

state.prop.init("MOONBASE_ON_SHIP", 0, 1)

state.prop.init("KOHR_AH_FRENZY", 0, 1)
state.prop.init("KOHR_AH_VISITS", 0, 2)
state.prop.init("KOHR_AH_BYES", 0, 1)

state.prop.init("SLYLANDRO_HOME_VISITS", 0, 3)
state.prop.init("DESTRUCT_CODE_ON_SHIP", 0, 1)

state.prop.init("ILWRATH_VISITS", 0, 3)
state.prop.init("ILWRATH_DECEIVED", 0, 1)
state.prop.init("FLAGSHIP_CLOAKED", 0, 1)

state.prop.init("MYCON_VISITS", 0, 3)
state.prop.init("MYCON_HOME_VISITS", 0, 3)
state.prop.init("MYCON_AMBUSH", 0, 1)
state.prop.init("MYCON_FELL_FOR_AMBUSH", 0, 1)
-- Set to 1 when the Mycon have been told about Organon
-- and are moving towards it.

state.prop.init("GLOBAL_FLAGS_AND_DATA", 0, 8)
-- This state seems to be used to distinguish between different
-- places where one may have an conversation with an alien.
-- Like home world, other world, space.
-- Why this needs 8 bits I don't know. Only specific
-- combinations of bits seem to be used (0, 1, or all bits).
-- A closer investigation is desirable. - SvdB
-- Bit 4 is set when initiating communication with the Ilwrath
-- 		homeworld by means of a HyperWave Broadcaster.
-- Bit 5 is set when initiating communication with an Ilwrath
-- 		ship by means of a HyperWave Broadcaster.
-- All bits are cleared when communication is over.

state.prop.init("ORZ_VISITS", 0, 3)
state.prop.init("TAALO_VISITS", 0, 3)
state.prop.init("ORZ_MANNER", 0, 2)

state.prop.init("PROBE_EXHIBITED_BUG", 0, 1)
state.prop.init("CLEAR_SPINDLE_ON_SHIP", 0, 1)

state.prop.init("URQUAN_VISITS", 0, 3)
state.prop.init("PLAYER_HYPNOTIZED", 0, 1)

state.prop.init("VUX_VISITS", 0, 3)
state.prop.init("VUX_HOME_VISITS", 0, 3)
state.prop.init("ZEX_VISITS", 0, 3)
state.prop.init("ZEX_IS_DEAD", 0, 1)
state.prop.init("KNOW_ZEX_WANTS_MONSTER", 0, 1)

state.prop.init("UTWIG_VISITS", 0, 3)
state.prop.init("UTWIG_HOME_VISITS", 0, 3)
state.prop.init("BOMB_VISITS", 0, 3)
state.prop.init("ULTRON_CONDITION", 0, 3)
-- 0 if the Supox still have the Ultron
-- 1 if the Captain has the Ultron, completely broken
-- 2 if the Captain has the Ultron, with 1 fix
-- 3 if the Captain has the Ultron, with 2 fixes
-- 4 if the Captain has the Ultron, completely restored
-- 5 if the Ultron has been returned to the Utwig
state.prop.init("UTWIG_HAVE_ULTRON", 0, 1)
state.prop.init("BOMB_UNPROTECTED", 0, 1)

state.prop.init("TAALO_UNPROTECTED", 0, 1)

state.prop.init("TALKING_PET_VISITS", 0, 3)
state.prop.init("TALKING_PET_HOME_VISITS", 0, 3)
state.prop.init("UMGAH_ZOMBIE_BLOBBIES", 0, 1)
-- The Umgah have come under the influence of the Talking Pet
state.prop.init("KNOW_UMGAH_ZOMBIES", 0, 1)
-- The Captain is aware that something is up with the Umgah

state.prop.init("ARILOU_VISITS", 0, 3)
state.prop.init("ARILOU_HOME_VISITS", 0, 3)
state.prop.init("KNOW_ARILOU_WANT_WRECK", 0, 1)
state.prop.init("ARILOU_CHECKED_UMGAH", 0, 2)
state.prop.init("PORTAL_SPAWNER", 0, 1)
state.prop.init("PORTAL_SPAWNER_ON_SHIP", 0, 1)

state.prop.init("UMGAH_VISITS", 0, 3)
state.prop.init("UMGAH_HOME_VISITS", 0, 3)
state.prop.init("MET_NORMAL_UMGAH", 0, 1)

state.prop.init("SYREEN_HOME_VISITS", 0, 3)
state.prop.init("SYREEN_SHUTTLE_ON_SHIP", 0, 1)
state.prop.init("KNOW_SYREEN_VAULT", 0, 1)

state.prop.init("EGG_CASE0_ON_SHIP", 0, 1)
state.prop.init("SUN_DEVICE_UNGUARDED", 0, 1)

state.prop.init("ROSY_SPHERE_ON_SHIP", 0, 1)
-- The Rosy Sphere is aboard the flagship, i.e. It has been
-- acquired from the Druuge, but not yet inserted in the broken
-- Ultron. cf. ROSY_SPHERE

state.prop.init("CHMMR_HOME_VISITS", 0, 3)
state.prop.init("CHMMR_EMERGING", 0, 1)
state.prop.init("CHMMR_UNLEASHED", 0, 1)
state.prop.init("CHMMR_BOMB_STATE", 0, 2)
-- 0 - Nothing is known about the Precursor Bomb.
-- 1 - The captain knows from the Chmmr that some extremely
--     powerful weapon is needed to destroy the Sa-Matra.
-- 2 - Installation of the precursor bomb has started.
-- 3 - Left the starbase after installation of the Precursor bomb.

state.prop.init("DRUUGE_DISCLAIMER", 0, 1)

state.prop.init("YEHAT_VISITS", 0, 3)
state.prop.init("YEHAT_REBEL_VISITS", 0, 3)
state.prop.init("YEHAT_HOME_VISITS", 0, 3)
state.prop.init("YEHAT_CIVIL_WAR", 0, 1)
state.prop.init("YEHAT_ABSORBED_PKUNK", 0, 1)
state.prop.init("YEHAT_SHIP_MONTH", 0, 4)
state.prop.init("YEHAT_SHIP_DAY", 0, 5)
state.prop.init("YEHAT_SHIP_YEAR", 0, 5)

state.prop.init("CLEAR_SPINDLE", 0, 1)
state.prop.init("PKUNK_VISITS", 0, 3)
state.prop.init("PKUNK_HOME_VISITS", 0, 3)
state.prop.init("PKUNK_SHIP_MONTH", 0, 4)
-- The month in PKUNK_SHIP_YEAR that new ships are available
-- from the Pkunk.
state.prop.init("PKUNK_SHIP_DAY", 0, 5)
-- The day of the month in PKUNK_SHIP_MONTH in PKUNK_SHIP_YEAR
-- that new ships are available.
state.prop.init("PKUNK_SHIP_YEAR", 0, 5)
-- The year that new ships are available from the Pkunk
-- (stored as an offset from the year the game starts).
state.prop.init("PKUNK_MISSION", 0, 3)

state.prop.init("SUPOX_VISITS", 0, 3)
state.prop.init("SUPOX_HOME_VISITS", 0, 3)

state.prop.init("THRADD_VISITS", 0, 3)
state.prop.init("THRADD_HOME_VISITS", 0, 3)
state.prop.init("HELIX_VISITS", 0, 3)
state.prop.init("HELIX_UNPROTECTED", 0, 1)
state.prop.init("THRADD_CULTURE", 0, 2)
state.prop.init("THRADD_MISSION", 0, 3)
-- 0 if the Thraddash fleet hasn't left the Thraddash home world.
-- 1 if the Thraddash are heading towards Kohr-Ah territory.
-- 2 if the Thraddash are fighting the Kohr-Ah.
-- 3 if the Thraddash are returning from Kohr-Ah territory.
-- 4 if the Thraddash fleet is back at the Thraddash home
-- world.

state.prop.init("DRUUGE_VISITS", 0, 3)
state.prop.init("DRUUGE_HOME_VISITS", 0, 3)
state.prop.init("ROSY_SPHERE", 0, 1)
-- The player has or has had the Rosy Sphere.
-- cf. ROSY_SHERE_ON_SHIP
state.prop.init("SCANNED_MAIDENS", 0, 1)
state.prop.init("SCANNED_FRAGMENTS", 0, 1)
state.prop.init("SCANNED_CASTER", 0, 1)
state.prop.init("SCANNED_SPAWNER", 0, 1)
state.prop.init("SCANNED_ULTRON", 0, 1)

state.prop.init("ZOQFOT_INFO", 0, 2)
state.prop.init("ZOQFOT_HOSTILE", 0, 1)
state.prop.init("ZOQFOT_HOME_VISITS", 0, 3)
state.prop.init("MET_ZOQFOT", 0, 1)
state.prop.init("ZOQFOT_DISTRESS", 0, 2)
-- 0 if the Zoq-Fot-Pik aren't in distress
-- 1 if the Zoq-Fot-Pik are under attack by the Kohr-Ah
-- 2 if the Zoq-Fot-Pik have been destroyed because of this
--   attack (not by the Kohr-Ah final victory cleansing)

state.prop.init("EGG_CASE1_ON_SHIP", 0, 1)
state.prop.init("EGG_CASE2_ON_SHIP", 0, 1)
state.prop.init("MYCON_SUN_VISITS", 0, 3)
state.prop.init("ORZ_HOME_VISITS", 0, 3)

state.prop.init("MELNORME_FUEL_PROCEDURE", 0, 1)
state.prop.init("MELNORME_TECH_PROCEDURE", 0, 1)
state.prop.init("MELNORME_INFO_PROCEDURE", 0, 1)

state.prop.init("MELNORME_TECH_STACK", 0, 4) -- Unused
-- MELNORME_TECH_STACK is now unused
state.prop.init("MELNORME_EVENTS_INFO_STACK", 0, 5)
state.prop.init("MELNORME_ALIEN_INFO_STACK", 0, 5)
state.prop.init("MELNORME_HISTORY_INFO_STACK", 0, 5)

state.prop.init("RAINBOW_WORLD0", 0, 8)
-- Low byte of a bit array, one bit per rainbow world.
-- Each bit is set if the rainbow world has been visited.
-- The lowest bit is for the first star in the star_array
-- with RAINBOW_DEFINED, and so on.
state.prop.init("RAINBOW_WORLD1", 0, 2)
-- High 2 bits of the bit array of which RAINBOW_WORLD0
-- is the low byte.
state.prop.init("MELNORME_RAINBOW_COUNT", 0, 4)
-- The number of rainbow world locations sold to the Melnorme.

state.prop.init("USED_BROADCASTER", 0, 1)
state.prop.init("BROADCASTER_RESPONSE", 0, 1)

state.prop.init("IMPROVED_LANDER_SPEED", 0, 1)
state.prop.init("IMPROVED_LANDER_CARGO", 0, 1)
state.prop.init("IMPROVED_LANDER_SHOT", 0, 1)

state.prop.init("MET_ORZ_BEFORE", 0, 1)
state.prop.init("YEHAT_REBEL_TOLD_PKUNK", 0, 1)
state.prop.init("PLAYER_HAD_SEX", 0, 1)
state.prop.init("UMGAH_BROADCASTERS_ON_SHIP", 0, 1)

state.prop.init("LIGHT_MINERAL_LOAD", 0, 3)
-- Number of times the captain has brought in a light mineral
-- load (<1000 RU). Max 6
state.prop.init("MEDIUM_MINERAL_LOAD", 0, 3)
-- Number of times the captain has brought in a medium mineral
-- load (>=1000 RU, <2500 RU). Max 6.
state.prop.init("HEAVY_MINERAL_LOAD", 0, 3)
-- Number of times the captain has brought in a heavy mineral
-- load (>=2500 RU). Max 6.

state.prop.init("STARBASE_BULLETS", 0, 32)

state.prop.init("STARBASE_MONTH", 0, 4)
state.prop.init("STARBASE_DAY", 0, 5)

state.prop.init("CREW_SOLD_TO_DRUUGE0", 0, 8)
state.prop.init("CREW_PURCHASED0", 0, 8)
state.prop.init("CREW_PURCHASED1", 0, 8)

state.prop.init("URQUAN_PROTECTING_SAMATRA", 0, 1)

state.prop.init("THRADDASH_BODY_COUNT", 0, 5)

state.prop.init("UTWIG_SUPOX_MISSION", 0, 3)
-- 0 if the Utwig and Supox fleet haven't left their home
-- world.
-- 1 if the U&S are on their way towards the Kohr-Ah
-- 2 if the U&S are fighting the Kohr-Ah (first 80 days)
-- 3 does not occur
-- 4 if the U&S are fighting the Kohr-Ah (second 80 days)
-- 5 if the U&S are returning home.
-- 6 if the U&S are back at their home world.
state.prop.init("SPATHI_INFO", 0, 3)

state.prop.init("ILWRATH_INFO", 0, 2)
state.prop.init("ILWRATH_GODS_SPOKEN", 0, 4)
state.prop.init("ILWRATH_WORSHIP", 0, 2)
state.prop.init("ILWRATH_FIGHT_THRADDASH", 0, 1)

state.prop.init("READY_TO_CONFUSE_URQUAN", 0, 1)
state.prop.init("URQUAN_HYPNO_VISITS", 0, 1)
state.prop.init("MENTIONED_PET_COMPULSION", 0, 1)
state.prop.init("URQUAN_INFO", 0, 2)
state.prop.init("KNOW_URQUAN_STORY", 0, 2)

state.prop.init("MYCON_INFO", 0, 4)
state.prop.init("MYCON_RAMBLE", 0, 5)
state.prop.init("KNOW_ABOUT_SHATTERED", 0, 2)
-- 0 if the player doesn't known about shattered worlds
-- 1 if the player has encountered a shattered world
-- 2 if the player knows that shatterred worlds are caused
--   by Mycon deep children.
-- 3 if the player has told the Syreen that Mycon Deep Children
--   cause shattered worlds. Proof doesn't have to be presented
--   yet at this time.
state.prop.init("MYCON_INSULTS", 0, 3)
state.prop.init("MYCON_KNOW_AMBUSH", 0, 1)
-- Set to 1 when the Mycon have been butchered at Organon,
-- just before the remaining Mycon head back home.

state.prop.init("SYREEN_INFO", 0, 2)
state.prop.init("KNOW_SYREEN_WORLD_SHATTERED", 0, 1)
state.prop.init("SYREEN_KNOW_ABOUT_MYCON", 0, 1)

state.prop.init("TALKING_PET_INFO", 0, 3)
state.prop.init("TALKING_PET_SUGGESTIONS", 0, 3)
state.prop.init("LEARNED_TALKING_PET", 0, 1)
state.prop.init("DNYARRI_LIED", 0, 1)
-- Set when the Talking Pet tells you his version of their
-- race's history with the Ur-Quan.
-- Cleared once you confront him about this lie.
state.prop.init("SHIP_TO_COMPEL", 0, 1)

state.prop.init("ORZ_GENERAL_INFO", 0, 2)
state.prop.init("ORZ_PERSONAL_INFO", 0, 3)
state.prop.init("ORZ_ANDRO_STATE", 0, 2)
state.prop.init("REFUSED_ORZ_ALLIANCE", 0, 1)

state.prop.init("PKUNK_MANNER", 0, 2)
-- 0 not met the Pkunk
-- 1 fought the Pkunk, but relations are still salvagable.
-- 2 hostile relations with the Pkunk, no way back.
-- 3 friendly relations with the Pkunk
state.prop.init("PKUNK_ON_THE_MOVE", 0, 1)
state.prop.init("PKUNK_FLEET", 0, 2)
state.prop.init("PKUNK_MIGRATE", 0, 2)
state.prop.init("PKUNK_RETURN", 0, 1)
state.prop.init("PKUNK_WORRY", 0, 2)
state.prop.init("PKUNK_INFO", 0, 3)
state.prop.init("PKUNK_WAR", 0, 2)
state.prop.init("PKUNK_FORTUNE", 0, 3)
state.prop.init("PKUNK_MIGRATE_VISITS", 0, 3)
state.prop.init("PKUNK_REASONS", 0, 4)
state.prop.init("PKUNK_SWITCH", 0, 1)
state.prop.init("PKUNK_SENSE_VICTOR", 0, 1)

state.prop.init("KOHR_AH_REASONS", 0, 2)
state.prop.init("KOHR_AH_PLEAD", 0, 2)
state.prop.init("KOHR_AH_INFO", 0, 2)
state.prop.init("KNOW_KOHR_AH_STORY", 0, 2)
state.prop.init("KOHR_AH_SENSES_EVIL", 0, 1)
state.prop.init("URQUAN_SENSES_EVIL", 0, 1)

state.prop.init("SLYLANDRO_PROBE_VISITS", 0, 3)
state.prop.init("SLYLANDRO_PROBE_THREAT", 0, 2)
state.prop.init("SLYLANDRO_PROBE_WRONG", 0, 2)
state.prop.init("SLYLANDRO_PROBE_ID", 0, 2)
state.prop.init("SLYLANDRO_PROBE_INFO", 0, 2)
state.prop.init("SLYLANDRO_PROBE_EXIT", 0, 2)

state.prop.init("UMGAH_HOSTILE", 0, 1)
state.prop.init("UMGAH_EVIL_BLOBBIES", 0, 1)
state.prop.init("UMGAH_MENTIONED_TRICKS", 0, 2)

state.prop.init("BOMB_CARRIER", 0, 1)
-- 0 when the flagship is not in battle, or it doesn't have the
--   enhanced precursor bomb installed.
-- 1 when the flagship is in battle and the bomb is installed.
-- This determines whether you can flee (if the warp escape
-- unit is installed at all), and whether taking the ship into
-- the Sa-Matra defense structure will trigger the end of the
-- game.

state.prop.init("THRADD_MANNER", 0, 1)
state.prop.init("THRADD_INTRO", 0, 2)
state.prop.init("THRADD_DEMEANOR", 0, 3)
state.prop.init("THRADD_INFO", 0, 2)
state.prop.init("THRADD_BODY_LEVEL", 0, 2)
state.prop.init("THRADD_MISSION_VISITS", 0, 1)
state.prop.init("THRADD_STACK_1", 0, 3)
state.prop.init("THRADD_HOSTILE_STACK_2", 0, 1)
state.prop.init("THRADD_HOSTILE_STACK_3", 0, 1)
state.prop.init("THRADD_HOSTILE_STACK_4", 0, 1)
state.prop.init("THRADD_HOSTILE_STACK_5", 0, 1)

state.prop.init("CHMMR_STACK", 0, 2)

state.prop.init("ARILOU_MANNER", 0, 2)
state.prop.init("NO_PORTAL_VISITS", 0, 1)
state.prop.init("ARILOU_STACK_1", 0, 2)
state.prop.init("ARILOU_STACK_2", 0, 1)
state.prop.init("ARILOU_STACK_3", 0, 2)
state.prop.init("ARILOU_STACK_4", 0, 1)
state.prop.init("ARILOU_STACK_5", 0, 2)
state.prop.init("ARILOU_INFO", 0, 2)
state.prop.init("ARILOU_HINTS", 0, 2)

state.prop.init("DRUUGE_MANNER", 0, 1)
state.prop.init("DRUUGE_SPACE_INFO", 0, 2)
state.prop.init("DRUUGE_HOME_INFO", 0, 2)
state.prop.init("DRUUGE_SALVAGE", 0, 1)
state.prop.init("KNOW_DRUUGE_SLAVERS", 0, 2)
state.prop.init("FRAGMENTS_BOUGHT", 0, 2)

state.prop.init("ZEX_STACK_1", 0, 2)
state.prop.init("ZEX_STACK_2", 0, 2)
state.prop.init("ZEX_STACK_3", 0, 2)

state.prop.init("VUX_INFO", 0, 2)
state.prop.init("VUX_STACK_1", 0, 4)
state.prop.init("VUX_STACK_2", 0, 2)
state.prop.init("VUX_STACK_3", 0, 2)
state.prop.init("VUX_STACK_4", 0, 2)

state.prop.init("SHOFIXTI_STACK4", 0, 2)

state.prop.init("YEHAT_REBEL_INFO", 0, 3)
state.prop.init("YEHAT_ROYALIST_INFO", 0, 1)
state.prop.init("YEHAT_ROYALIST_TOLD_PKUNK", 0, 1)
state.prop.init("NO_YEHAT_ALLY_HOME", 0, 1)
state.prop.init("NO_YEHAT_HELP_HOME", 0, 1)
state.prop.init("NO_YEHAT_INFO", 0, 1)
state.prop.init("NO_YEHAT_ALLY_SPACE", 0, 2)
state.prop.init("NO_YEHAT_HELP_SPACE", 0, 2)

state.prop.init("ZOQFOT_KNOW_MASK", 0, 4)

state.prop.init("SUPOX_HOSTILE", 0, 1)
state.prop.init("SUPOX_INFO", 0, 1)
state.prop.init("SUPOX_WAR_NEWS", 0, 2)
state.prop.init("SUPOX_ULTRON_HELP", 0, 1)
state.prop.init("SUPOX_STACK1", 0, 3)
state.prop.init("SUPOX_STACK2", 0, 2)

state.prop.init("UTWIG_HOSTILE", 0, 1)
state.prop.init("UTWIG_INFO", 0, 1)
state.prop.init("UTWIG_WAR_NEWS", 0, 2)
state.prop.init("UTWIG_STACK1", 0, 3)
state.prop.init("UTWIG_STACK2", 0, 2)
state.prop.init("BOMB_INFO", 0, 1)
state.prop.init("BOMB_STACK1", 0, 2)
state.prop.init("BOMB_STACK2", 0, 2)

state.prop.init("SLYLANDRO_KNOW_BROKEN", 0, 1)
state.prop.init("PLAYER_KNOWS_PROBE", 0, 1)
state.prop.init("PLAYER_KNOWS_PROGRAM", 0, 1)
state.prop.init("PLAYER_KNOWS_EFFECTS", 0, 1)
state.prop.init("PLAYER_KNOWS_PRIORITY", 0, 1)
state.prop.init("SLYLANDRO_STACK1", 0, 3)
state.prop.init("SLYLANDRO_STACK2", 0, 1)
state.prop.init("SLYLANDRO_STACK3", 0, 2)
state.prop.init("SLYLANDRO_STACK4", 0, 2)
state.prop.init("SLYLANDRO_STACK5", 0, 1)
state.prop.init("SLYLANDRO_STACK6", 0, 1)
state.prop.init("SLYLANDRO_STACK7", 0, 2)
state.prop.init("SLYLANDRO_STACK8", 0, 2)
state.prop.init("SLYLANDRO_STACK9", 0, 2)
state.prop.init("SLYLANDRO_KNOW_EARTH", 0, 1)
state.prop.init("SLYLANDRO_KNOW_EXPLORE", 0, 1)
state.prop.init("SLYLANDRO_KNOW_GATHER", 0, 1)
state.prop.init("SLYLANDRO_KNOW_URQUAN", 0, 2)
state.prop.init("RECALL_VISITS", 0, 2)

state.prop.init("SLYLANDRO_MULTIPLIER", 0, 3)
state.prop.init("KNOW_SPATHI_QUEST", 0, 1)
state.prop.init("KNOW_SPATHI_EVIL", 0, 1)

state.prop.init("BATTLE_PLANET", 0, 8)
state.prop.init("ESCAPE_COUNTER", 0, 8)

state.prop.init("CREW_SOLD_TO_DRUUGE1", 0, 8)
state.prop.init("PKUNK_DONE_WAR", 0, 1)

state.prop.init("SYREEN_STACK0", 0, 2)
state.prop.init("SYREEN_STACK1", 0, 2)
state.prop.init("SYREEN_STACK2", 0, 2)

state.prop.init("REFUSED_ULTRON_AT_BOMB", 0, 1)
state.prop.init("NO_TRICK_AT_SUN", 0, 1)

state.prop.init("SPATHI_STACK0", 0, 2)
state.prop.init("SPATHI_STACK1", 0, 1)
state.prop.init("SPATHI_STACK2", 0, 1)

state.prop.init("ORZ_STACK0", 0, 1)
state.prop.init("ORZ_STACK1", 0, 1)

-- These state bits are actually offsets into defgrp.dat. They really
-- shouldn't be part of the serialized Game State array! --MCM
state.prop.init("SHOFIXTI_GRPOFFS", 0, 32)
state.prop.init("ZOQFOT_GRPOFFS", 0, 32)
state.prop.init("MELNORME0_GRPOFFS", 0, 32)
state.prop.init("MELNORME1_GRPOFFS", 0, 32)
state.prop.init("MELNORME2_GRPOFFS", 0, 32)
state.prop.init("MELNORME3_GRPOFFS", 0, 32)
state.prop.init("MELNORME4_GRPOFFS", 0, 32)
state.prop.init("MELNORME5_GRPOFFS", 0, 32)
state.prop.init("MELNORME6_GRPOFFS", 0, 32)
state.prop.init("MELNORME7_GRPOFFS", 0, 32)
state.prop.init("MELNORME8_GRPOFFS", 0, 32)
state.prop.init("URQUAN_PROBE_GRPOFFS", 0, 32)
state.prop.init("COLONY_GRPOFFS", 0, 32)
state.prop.init("SAMATRA_GRPOFFS", 0, 32)

-- Revision 1: MegaMod v0.8.0.85
state.prop.setrev(1)
state.prop.init("AUTOPILOT_OK", 0, 1) -- JMS: It is allowed for the autopilot to engage
state.prop.init("KNOW_QS_PORTAL", 0, 16) -- JMS: Quasispace portal name flags

-- Revision 2: MegaMod v0.8.1
state.prop.setrev(2)
state.prop.init("SYS_VISITED_00", 0, 32)
state.prop.init("SYS_VISITED_01", 0, 32)
state.prop.init("SYS_VISITED_02", 0, 32)
state.prop.init("SYS_VISITED_03", 0, 32)
state.prop.init("SYS_VISITED_04", 0, 32)
state.prop.init("SYS_VISITED_05", 0, 32)
state.prop.init("SYS_VISITED_06", 0, 32)
state.prop.init("SYS_VISITED_07", 0, 32)
state.prop.init("SYS_VISITED_08", 0, 32)
state.prop.init("SYS_VISITED_09", 0, 32)
state.prop.init("SYS_VISITED_10", 0, 32)
state.prop.init("SYS_VISITED_11", 0, 32)
state.prop.init("SYS_VISITED_12", 0, 32)
state.prop.init("SYS_VISITED_13", 0, 32)
state.prop.init("SYS_VISITED_14", 0, 32)
state.prop.init("SYS_VISITED_15", 0, 32)
state.prop.init("KNOW_HOMEWORLD", 0, 18)
state.prop.init("HM_ENCOUNTERS", 0, 9)
state.prop.init("RESERVED", 0, 32)

-- Revision 3: MegaMod v0.8.2
state.prop.setrev(3)
state.prop.init("SYS_PLYR_MARKER_00", 0, 32)
state.prop.init("SYS_PLYR_MARKER_01", 0, 32)
state.prop.init("SYS_PLYR_MARKER_02", 0, 32)
state.prop.init("SYS_PLYR_MARKER_03", 0, 32)
state.prop.init("SYS_PLYR_MARKER_04", 0, 32)
state.prop.init("SYS_PLYR_MARKER_05", 0, 32)
state.prop.init("SYS_PLYR_MARKER_06", 0, 32)
state.prop.init("SYS_PLYR_MARKER_07", 0, 32)
state.prop.init("SYS_PLYR_MARKER_08", 0, 32)
state.prop.init("SYS_PLYR_MARKER_09", 0, 32)
state.prop.init("SYS_PLYR_MARKER_10", 0, 32)
state.prop.init("SYS_PLYR_MARKER_11", 0, 32)
state.prop.init("SYS_PLYR_MARKER_12", 0, 32)
state.prop.init("SYS_PLYR_MARKER_13", 0, 32)
state.prop.init("SYS_PLYR_MARKER_14", 0, 32)
state.prop.init("SYS_PLYR_MARKER_15", 0, 32)
state.prop.init("LAST_LOCATION_X", -1, 16)
state.prop.init("LAST_LOCATION_Y", -1, 16)

-- Revision 4: MegaMod v0.8.3
state.prop.setrev(4)
state.prop.init("ADV_AUTOPILOT_SAVE_X", -1, 16)
state.prop.init("ADV_AUTOPILOT_SAVE_Y", -1, 16)
state.prop.init("ADV_AUTOPILOT_QUASI_X", -1, 16)
state.prop.init("ADV_AUTOPILOT_QUASI_Y", -1, 16)

-- Revision 5: MegaMod v0.8.4/v0.8.5
state.prop.setrev(5)
state.prop.init("SEED_TYPE", 0, 2)

state.prop.init("SUPOX_SHIP_MONTH", 0, 4)
state.prop.init("SUPOX_SHIP_DAY", 0, 5)
state.prop.init("SUPOX_SHIP_YEAR", 0, 5)
-- The month, day, and year that new ships are available from the Supox.
-- (stored as an offset from the year the game starts)

state.prop.init("UTWIG_SHIP_MONTH", 0, 4)
state.prop.init("UTWIG_SHIP_DAY", 0, 5)
state.prop.init("UTWIG_SHIP_YEAR", 0, 5)
-- The month, day, and year that new ships are available from the Utwig.
-- (stored as an offset from the year the game starts)

state.prop.init("REV_5_PAD", 0, 1)

-- Revision 6: MegaMod v0.8.6
state.prop.setrev(6)
state.prop.init("PLACEHOLDER", 0, 1)
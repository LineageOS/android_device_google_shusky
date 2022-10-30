ifeq ($(filter memtag_heap,$(SANITIZE_TARGET)),)
  SANITIZE_TARGET := $(strip $(SANITIZE_TARGET) memtag_heap memtag_stack)
  SANITIZE_TARGET_DIAG := $(strip $(SANITIZE_TARGET_DIAG) memtag_heap)
endif

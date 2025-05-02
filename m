Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 82209AA6EB5
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 12:02:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F00A402AD
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 10:02:26 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by lists.linaro.org (Postfix) with ESMTPS id B6E4545512
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 May 2025 10:01:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="Cu/dWcJy";
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.46 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ac2af2f15d1so227623766b.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 02 May 2025 03:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746180061; x=1746784861; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5s86D78yiZx5WFd3E3wPyOpz8asivIW+9gMjXmMDlyU=;
        b=Cu/dWcJyPDQGxcstnP8+iSi5MOnVov2RF2ctGT/nmZOGJBMoy8002DdHM1k06imsQX
         h6oRl8ZNRkYkh8XFskzC1Zv4snfKxK/AClYRozT89+2ZWJpXGFCMm2TXjXvCqSpujz90
         QTQ8CXWSQfKXElDy/KoRFAb/9OvRHKFy12Gp9smqRAbBEw+SqMMnKUpt625NkIqfI5Te
         OMUODCnJCZNFt+aN1PMHPDJ6R0C2Lkwh4cOa/4ZnWtVTRNHR2EsHwIuW4sNmr0saRrgJ
         fezdThpwyqYwNE/cVnfpjyWHhhT1GivTHTGlJ9SzlSfJmMgHXsR2UelIT7fhyOLBlXbS
         PUrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746180061; x=1746784861;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5s86D78yiZx5WFd3E3wPyOpz8asivIW+9gMjXmMDlyU=;
        b=agAX8U19rACLSwEx6O5HoFohJ1+TlPrpGGDYhEC1BNpcPOvzCUfUlK2F34vINmxvoX
         8GqkvYRPizzrLwy1UlGv7KA3JdQCuh3wd2qZ/WQx8KEyGls1kkqsZrnu/s7pscET8eGh
         XK39KsxdsPLvPOATiXK5YFsmi0lCggu49SHIrlzyqjeEsUBJ3aqcofCZMN7ycfz7g0Sp
         XoWjAPgCAp+eaTn+O1wzTvc1Ore4yI0NhlQttXwZfb40DYHBooSRTOiY1ffrEbBZBnDF
         yd01kZCY4OxUUHxgYYF1qCq91XmblxRirf+kMDbqdVCthQihTid98oZuAJRwEBUXAaTJ
         mB6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUpNdo1DU5RTW+TxjTVTutO621rFDoBdlJ9x9WZPY/dqAlSdQlb35WMGULA+5J3RH/C9Rh+GiGlYqYzhMRE@lists.linaro.org
X-Gm-Message-State: AOJu0YxXpgDGj581G5yUB/kUP24cZ1sQH4nWoZc/mO68hW00GeVdQ1tm
	LT5sfC5Vzpdeywwb7bYjdazhHS8+PPbGoKNm6bVqhISW8v5Y+v0RByGr54SmPg7Mvntz/s+uA0P
	MCL35uA==
X-Gm-Gg: ASbGncuavV6BfwnA8PiRZ4J7oKx/RWDnHPi7bgper6J+cfnG3jqXKNqvNbBdG/BUqhz
	5TAZZkqsZrLcl7DRmw0Qez511VuRXzChSoA9DNrP4BdA48O+S0OkJ1k2xg2bbU8XteV42hOgz3X
	4Mog5p2g/IAQO56Cs9oiJdRK4O96Dmzaks42xlhUxU/xG3WU/xp+jLiRcS/zaXGlbvbFJB1kEGz
	p8rNX8yHwjXLQLO9jq7ppJhQtUxnUWR6f1nuq9ypf6idwxK8fcqhEIh1rSlJ1IFwgfKZrVmNVNn
	aK6PDH4owv71SnJt0yfaf+8e2aYaeKoWAhyZX9JyRkPgs8mLum9fO7aC6dpbiBLdzFvBfsfRJYN
	Q9ufEGwWO6sWnnHc84g==
X-Google-Smtp-Source: AGHT+IEpFqp/1tLyV2ua5DVW2AZ1ie6CKGdDrgM8EWE0Juydt2Oj3UgkNdKAP5Gam4hEcvSWIVKhdA==
X-Received: by 2002:a17:907:6d14:b0:ac6:fec7:34dd with SMTP id a640c23a62f3a-ad17afbe974mr195667366b.52.1746180060558;
        Fri, 02 May 2025 03:01:00 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1891473a1sm26030566b.4.2025.05.02.03.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 03:00:59 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Fri,  2 May 2025 11:59:18 +0200
Message-ID: <20250502100049.1746335-5-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502100049.1746335-1-jens.wiklander@linaro.org>
References: <20250502100049.1746335-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B6E4545512
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.46:from];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,linaro.org:mid,linaro.org:email,mail-ej1-f46.google.com:helo,mail-ej1-f46.google.com:rdns];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: VHVKK56RKWS6Z2F4372P5D53YLKCC47E
X-Message-ID-Hash: VHVKK56RKWS6Z2F4372P5D53YLKCC47E
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 04/14] optee: sync secure world ABI headers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VHVKK56RKWS6Z2F4372P5D53YLKCC47E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Update the header files describing the secure world ABI, both with and
without FF-A. The ABI is extended to deal with protected memory, but as
usual backward compatible.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/optee/optee_ffa.h | 27 +++++++++---
 drivers/tee/optee/optee_msg.h | 83 ++++++++++++++++++++++++++++++-----
 drivers/tee/optee/optee_smc.h | 69 ++++++++++++++++++++++++++++-
 3 files changed, 161 insertions(+), 18 deletions(-)

diff --git a/drivers/tee/optee/optee_ffa.h b/drivers/tee/optee/optee_ffa.h
index 257735ae5b56..cc257e7956a3 100644
--- a/drivers/tee/optee/optee_ffa.h
+++ b/drivers/tee/optee/optee_ffa.h
@@ -81,7 +81,7 @@
  *                   as the second MSG arg struct for
  *                   OPTEE_FFA_YIELDING_CALL_WITH_ARG.
  *        Bit[31:8]: Reserved (MBZ)
- * w5:	  Bitfield of secure world capabilities OPTEE_FFA_SEC_CAP_* below,
+ * w5:	  Bitfield of OP-TEE capabilities OPTEE_FFA_SEC_CAP_*
  * w6:	  The maximum secure world notification number
  * w7:	  Not used (MBZ)
  */
@@ -94,6 +94,8 @@
 #define OPTEE_FFA_SEC_CAP_ASYNC_NOTIF	BIT(1)
 /* OP-TEE supports probing for RPMB device if needed */
 #define OPTEE_FFA_SEC_CAP_RPMB_PROBE	BIT(2)
+/* OP-TEE supports Protected Memory for secure data path */
+#define OPTEE_FFA_SEC_CAP_PROTMEM	BIT(3)
 
 #define OPTEE_FFA_EXCHANGE_CAPABILITIES OPTEE_FFA_BLOCKING_CALL(2)
 
@@ -108,7 +110,7 @@
  *
  * Return register usage:
  * w3:    Error code, 0 on success
- * w4-w7: Note used (MBZ)
+ * w4-w7: Not used (MBZ)
  */
 #define OPTEE_FFA_UNREGISTER_SHM	OPTEE_FFA_BLOCKING_CALL(3)
 
@@ -119,16 +121,31 @@
  * Call register usage:
  * w3:    Service ID, OPTEE_FFA_ENABLE_ASYNC_NOTIF
  * w4:	  Notification value to request bottom half processing, should be
- *	  less than OPTEE_FFA_MAX_ASYNC_NOTIF_VALUE.
+ *	  less than OPTEE_FFA_MAX_ASYNC_NOTIF_VALUE
  * w5-w7: Not used (MBZ)
  *
  * Return register usage:
  * w3:    Error code, 0 on success
- * w4-w7: Note used (MBZ)
+ * w4-w7: Not used (MBZ)
  */
 #define OPTEE_FFA_ENABLE_ASYNC_NOTIF	OPTEE_FFA_BLOCKING_CALL(5)
 
-#define OPTEE_FFA_MAX_ASYNC_NOTIF_VALUE 64
+#define OPTEE_FFA_MAX_ASYNC_NOTIF_VALUE	64
+
+/*
+ * Release Protected memory
+ *
+ * Call register usage:
+ * w3:    Service ID, OPTEE_FFA_RECLAIM_PROTMEM
+ * w4:    Shared memory handle, lower bits
+ * w5:    Shared memory handle, higher bits
+ * w6-w7: Not used (MBZ)
+ *
+ * Return register usage:
+ * w3:    Error code, 0 on success
+ * w4-w7: Note used (MBZ)
+ */
+#define OPTEE_FFA_RELEASE_PROTMEM	OPTEE_FFA_BLOCKING_CALL(8)
 
 /*
  * Call with struct optee_msg_arg as argument in the supplied shared memory
diff --git a/drivers/tee/optee/optee_msg.h b/drivers/tee/optee/optee_msg.h
index e8840a82b983..22d71d6f110d 100644
--- a/drivers/tee/optee/optee_msg.h
+++ b/drivers/tee/optee/optee_msg.h
@@ -133,13 +133,13 @@ struct optee_msg_param_rmem {
 };
 
 /**
- * struct optee_msg_param_fmem - ffa memory reference parameter
+ * struct optee_msg_param_fmem - FF-A memory reference parameter
  * @offs_lower:	   Lower bits of offset into shared memory reference
  * @offs_upper:	   Upper bits of offset into shared memory reference
  * @internal_offs: Internal offset into the first page of shared memory
  *		   reference
  * @size:	   Size of the buffer
- * @global_id:	   Global identifier of Shared memory
+ * @global_id:	   Global identifier of the shared memory
  */
 struct optee_msg_param_fmem {
 	u32 offs_low;
@@ -165,7 +165,7 @@ struct optee_msg_param_value {
  * @attr:	attributes
  * @tmem:	parameter by temporary memory reference
  * @rmem:	parameter by registered memory reference
- * @fmem:	parameter by ffa registered memory reference
+ * @fmem:	parameter by FF-A registered memory reference
  * @value:	parameter by opaque value
  * @octets:	parameter by octet string
  *
@@ -296,6 +296,18 @@ struct optee_msg_arg {
  */
 #define OPTEE_MSG_FUNCID_GET_OS_REVISION	0x0001
 
+/*
+ * Values used in OPTEE_MSG_CMD_LEND_PROTMEM below
+ * OPTEE_MSG_PROTMEM_RESERVED		Reserved
+ * OPTEE_MSG_PROTMEM_SECURE_VIDEO_PLAY	Secure Video Playback
+ * OPTEE_MSG_PROTMEM_TRUSTED_UI		Trused UI
+ * OPTEE_MSG_PROTMEM_SECURE_VIDEO_RECORD	Secure Video Recording
+ */
+#define OPTEE_MSG_PROTMEM_RESERVED		0
+#define OPTEE_MSG_PROTMEM_SECURE_VIDEO_PLAY	1
+#define OPTEE_MSG_PROTMEM_TRUSTED_UI		2
+#define OPTEE_MSG_PROTMEM_SECURE_VIDEO_RECORD	3
+
 /*
  * Do a secure call with struct optee_msg_arg as argument
  * The OPTEE_MSG_CMD_* below defines what goes in struct optee_msg_arg::cmd
@@ -337,15 +349,62 @@ struct optee_msg_arg {
  * OPTEE_MSG_CMD_STOP_ASYNC_NOTIF informs secure world that from now is
  * normal world unable to process asynchronous notifications. Typically
  * used when the driver is shut down.
+ *
+ * OPTEE_MSG_CMD_LEND_PROTMEM lends protected memory. The passed normal
+ * physical memory is protected from normal world access. The memory
+ * should be unmapped prior to this call since it becomes inaccessible
+ * during the request.
+ * Parameters are passed as:
+ * [in] param[0].attr			OPTEE_MSG_ATTR_TYPE_VALUE_INPUT
+ * [in] param[0].u.value.a		OPTEE_MSG_PROTMEM_* defined above
+ * [in] param[1].attr			OPTEE_MSG_ATTR_TYPE_TMEM_INPUT
+ * [in] param[1].u.tmem.buf_ptr		physical address
+ * [in] param[1].u.tmem.size		size
+ * [in] param[1].u.tmem.shm_ref		holds protected memory reference
+ *
+ * OPTEE_MSG_CMD_RECLAIM_PROTMEM reclaims a previously lent protected
+ * memory reference. The physical memory is accessible by the normal world
+ * after this function has return and can be mapped again. The information
+ * is passed as:
+ * [in] param[0].attr			OPTEE_MSG_ATTR_TYPE_VALUE_INPUT
+ * [in] param[0].u.value.a		holds protected memory cookie
+ *
+ * OPTEE_MSG_CMD_GET_PROTMEM_CONFIG get configuration for a specific
+ * protected memory use case. Parameters are passed as:
+ * [in] param[0].attr			OPTEE_MSG_ATTR_TYPE_VALUE_INOUT
+ * [in] param[0].value.a		OPTEE_MSG_PROTMEM_*
+ * [in] param[1].attr			OPTEE_MSG_ATTR_TYPE_{R,F}MEM_OUTPUT
+ * [in] param[1].u.{r,f}mem		Buffer or NULL
+ * [in] param[1].u.{r,f}mem.size	Provided size of buffer or 0 for query
+ * output for the protected use case:
+ * [out] param[0].value.a		Minimal size of protected memory
+ * [out] param[0].value.b		Required alignment of size and start of
+ *					protected memory
+ * [out] param[1].{r,f}mem.size		Size of output data
+ * [out] param[1].{r,f}mem		If non-NULL, contains an array of
+ *					uint16_t holding endpoints that
+ *					must be included when lending
+ *					memory for this use case
+ *
+ * OPTEE_MSG_CMD_ASSIGN_PROTMEM assigns use-case to protected memory
+ * previously lent using the FFA_LEND framework ABI. Parameters are passed
+ * as:
+ * [in] param[0].attr			OPTEE_MSG_ATTR_TYPE_VALUE_INPUT
+ * [in] param[0].u.value.a		holds protected memory cookie
+ * [in] param[0].u.value.b		OPTEE_MSG_PROTMEM_* defined above
  */
-#define OPTEE_MSG_CMD_OPEN_SESSION	0
-#define OPTEE_MSG_CMD_INVOKE_COMMAND	1
-#define OPTEE_MSG_CMD_CLOSE_SESSION	2
-#define OPTEE_MSG_CMD_CANCEL		3
-#define OPTEE_MSG_CMD_REGISTER_SHM	4
-#define OPTEE_MSG_CMD_UNREGISTER_SHM	5
-#define OPTEE_MSG_CMD_DO_BOTTOM_HALF	6
-#define OPTEE_MSG_CMD_STOP_ASYNC_NOTIF	7
-#define OPTEE_MSG_FUNCID_CALL_WITH_ARG	0x0004
+#define OPTEE_MSG_CMD_OPEN_SESSION		0
+#define OPTEE_MSG_CMD_INVOKE_COMMAND		1
+#define OPTEE_MSG_CMD_CLOSE_SESSION		2
+#define OPTEE_MSG_CMD_CANCEL			3
+#define OPTEE_MSG_CMD_REGISTER_SHM		4
+#define OPTEE_MSG_CMD_UNREGISTER_SHM		5
+#define OPTEE_MSG_CMD_DO_BOTTOM_HALF		6
+#define OPTEE_MSG_CMD_STOP_ASYNC_NOTIF		7
+#define OPTEE_MSG_CMD_LEND_PROTMEM		8
+#define OPTEE_MSG_CMD_RECLAIM_PROTMEM		9
+#define OPTEE_MSG_CMD_GET_PROTMEM_CONFIG	10
+#define OPTEE_MSG_CMD_ASSIGN_PROTMEM		11
+#define OPTEE_MSG_FUNCID_CALL_WITH_ARG		0x0004
 
 #endif /* _OPTEE_MSG_H */
diff --git a/drivers/tee/optee/optee_smc.h b/drivers/tee/optee/optee_smc.h
index 879426300821..8d3a22bafbdd 100644
--- a/drivers/tee/optee/optee_smc.h
+++ b/drivers/tee/optee/optee_smc.h
@@ -264,7 +264,6 @@ struct optee_smc_get_shm_config_result {
 #define OPTEE_SMC_SEC_CAP_HAVE_RESERVED_SHM	BIT(0)
 /* Secure world can communicate via previously unregistered shared memory */
 #define OPTEE_SMC_SEC_CAP_UNREGISTERED_SHM	BIT(1)
-
 /*
  * Secure world supports commands "register/unregister shared memory",
  * secure world accepts command buffers located in any parts of non-secure RAM
@@ -280,6 +279,10 @@ struct optee_smc_get_shm_config_result {
 #define OPTEE_SMC_SEC_CAP_RPC_ARG		BIT(6)
 /* Secure world supports probing for RPMB device if needed */
 #define OPTEE_SMC_SEC_CAP_RPMB_PROBE		BIT(7)
+/* Secure world supports protected memory */
+#define OPTEE_SMC_SEC_CAP_PROTMEM		BIT(8)
+/* Secure world supports dynamic protected memory */
+#define OPTEE_SMC_SEC_CAP_DYNAMIC_PROTMEM	BIT(9)
 
 #define OPTEE_SMC_FUNCID_EXCHANGE_CAPABILITIES	9
 #define OPTEE_SMC_EXCHANGE_CAPABILITIES \
@@ -451,6 +454,70 @@ struct optee_smc_disable_shm_cache_result {
 
 /* See OPTEE_SMC_CALL_WITH_REGD_ARG above */
 #define OPTEE_SMC_FUNCID_CALL_WITH_REGD_ARG	19
+/*
+ * Get protected memory config
+ *
+ * Returns the protected memory config.
+ *
+ * Call register usage:
+ * a0   SMC Function ID, OPTEE_SMC_GET_PROTMEM_CONFIG
+ * a2-6	Not used, must be zero
+ * a7	Hypervisor Client ID register
+ *
+ * Have config return register usage:
+ * a0	OPTEE_SMC_RETURN_OK
+ * a1	Physical address of start of protected memory
+ * a2	Size of protected memory
+ * a3	Not used
+ * a4-7	Preserved
+ *
+ * Not available register usage:
+ * a0	OPTEE_SMC_RETURN_ENOTAVAIL
+ * a1-3 Not used
+ * a4-7	Preserved
+ */
+#define OPTEE_SMC_FUNCID_GET_PROTMEM_CONFIG		20
+#define OPTEE_SMC_GET_PROTMEM_CONFIG \
+	OPTEE_SMC_FAST_CALL_VAL(OPTEE_SMC_FUNCID_GET_PROTMEM_CONFIG)
+
+struct optee_smc_get_protmem_config_result {
+	unsigned long status;
+	unsigned long start;
+	unsigned long size;
+};
+
+/*
+ * Get dynamic protected memory config
+ *
+ * Returns the dynamic protected memory config.
+ *
+ * Call register usage:
+ * a0	SMC Function ID, OPTEE_SMC_GET_DYN_PROTMEM_CONFIG
+ * a2-6	Not used, must be zero
+ * a7	Hypervisor Client ID register
+ *
+ * Have config return register usage:
+ * a0	OPTEE_SMC_RETURN_OK
+ * a1	Minimal size of protected memory
+ * a2	Required alignment of size and start of registered protected memory
+ * a3	Not used
+ * a4-7	Preserved
+ *
+ * Not available register usage:
+ * a0	OPTEE_SMC_RETURN_ENOTAVAIL
+ * a1-3 Not used
+ * a4-7	Preserved
+ */
+
+#define OPTEE_SMC_FUNCID_GET_DYN_PROTMEM_CONFIG	21
+#define OPTEE_SMC_GET_DYN_PROTMEM_CONFIG \
+	OPTEE_SMC_FAST_CALL_VAL(OPTEE_SMC_FUNCID_GET_DYN_PROTMEM_CONFIG)
+
+struct optee_smc_get_dyn_protmem_config_result {
+	unsigned long status;
+	unsigned long size;
+	unsigned long align;
+};
 
 /*
  * Resume from RPC (for example after processing a foreign interrupt)
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

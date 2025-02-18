Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 630EAA3A00D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2025 15:36:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85E164461B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2025 14:36:49 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by lists.linaro.org (Postfix) with ESMTPS id 862FF4559A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2025 14:35:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=QY5qeQs8;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.179 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30930b0b420so28557401fa.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2025 06:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739889345; x=1740494145; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nSDQWd9UZqV/STl4BJjbppPEGE1hH0ufO/G2aXdmVa4=;
        b=QY5qeQs8qoq0mlV9dA+wnjpKotnoup46lWwNVSzKoS9ESRp9gWzmKzQ8AcATB2crYR
         08so2hmfvMMqFrS9ba/wLL5rUY9AccUCllVEUBBqzY3QbqMMfiIUNSJVsWMmPUKLJkp1
         8mqEqSV6dvDdlMrydmaf6OM44wPDY6JUWGG9kQFN8f/y55FHIyxzyXcvx19BcyBZ3MkU
         vmIL+pH0BRLgREKrUWAKpWDPJYfxpXf2YC3sM+MrtmqAo8KIlBc45RjHpQsbAZUQXwkD
         6RAoPVMSd0kCi9VFrwUPHidko+674e92Vg3PWZ+S/axfDrp6kEKcB8Q5pA0du34T9Jf8
         bQNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739889345; x=1740494145;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nSDQWd9UZqV/STl4BJjbppPEGE1hH0ufO/G2aXdmVa4=;
        b=emkK7wdWWeZ4KSiJQa5JBVSe+2Ev11eiEoYjpAmZodkAOjXtwh35KmSjKCpm5bGms2
         bywPWe3vQ340rg1pjDYXeMGrx6XeWZjijdsapsDwGOX2EkWlih/WG4eb01//FD3JlJqm
         4NbvSXL8QRiKmAVSiEPlWI6UjMqnpL4SHcvGJ3bzq6utFqSAad18C1Jqk5YcVftq0VfS
         nSkHz/7gyl07kx6M1H8zaMJ0r3xsHV1+OzXZrLaSNdbbxFIPbo7cRxuoSiO0OHXhamc3
         3W4KPkz4lTaMH/8zP/k6G1CGbBuX1ohK6wj5OQJL0FMf9rfjpSbyJVeYFv8ElUDcbyEr
         G6OQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqqgIVrAgUnKGYLgjyaaXA1r15tvz/ux9GNIK+ff9izR03rznQj45aP89HECB/92Xiqvltih6OGWKlZzLH@lists.linaro.org
X-Gm-Message-State: AOJu0Yx1nUkU71qtJvfipGgQPiIVMZtBHV65+6EenR0xw07OmCFz2MdW
	P3cpBp+RTMez7cKX9PCN5S50FQ+phLHQJ0rn+L8kKcUDxPQvK1bwD+hlWPornaR0VQ==
X-Gm-Gg: ASbGncs6vmragCKn8/9Av4pIs2kYjvkrA8wJPDlhOy9yGvFPjOuuBwzXPf0m7OZZdA/
	5wV24L0SKU2NkU4HoTcGaYUcxSzYBOpbnQ3rzsAJDFMSU4HFsXuaExLnpQuf52DWGm+yDyFlGXM
	llMTcnLQrl/BYd/HeA+3185TVcBI9XnDhkH+Vaye/nNrTTQ5SR2Ayir1O9CQ30MAMnAm8GxP+Rs
	N+k6TlHXt3BYw2DOYLT+boyWvhGUzAjx5HlHE1BSz4JNEdGbXdq455fYdebAxOMnpOUf7Hb1JTE
	KuAoYyiFPIRgAIgJph5pe9ie4AgYVMaGwVnj1vEWK8oeZOttVOYn3OjkeLqEZtdSU1c2
X-Google-Smtp-Source: AGHT+IF9vO7JxagmmEJhta7Zxm6e8mrTw9C6huFeIBooCIxbmBYjTz6cKR26jv51+niVmF52hX1/gw==
X-Received: by 2002:a2e:8757:0:b0:308:db61:34cf with SMTP id 38308e7fff4ca-30927a72551mr42596281fa.14.1739889345220;
        Tue, 18 Feb 2025 06:35:45 -0800 (PST)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-309311777a8sm12360831fa.25.2025.02.18.06.35.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 06:35:43 -0800 (PST)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Tue, 18 Feb 2025 15:34:53 +0100
Message-ID: <20250218143527.1236668-5-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250218143527.1236668-1-jens.wiklander@linaro.org>
References: <20250218143527.1236668-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 862FF4559A
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.208.179:from];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,linaro.org:mid,linaro.org:email];
	DKIM_TRACE(0.00)[linaro.org:+];
	RBL_NIXSPAM_FAIL(0.00)[209.85.208.179:server fail];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.179:from];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: OILSERZMFDVNWP6Y44TABQMAGQ5BL2HT
X-Message-ID-Hash: OILSERZMFDVNWP6Y44TABQMAGQ5BL2HT
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 4/7] optee: sync secure world ABI headers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OILSERZMFDVNWP6Y44TABQMAGQ5BL2HT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Update the header files describing the secure world ABI, both with and
without FF-A. The ABI is extended to deal with restricted memory, but as
usual backward compatible.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/optee/optee_ffa.h | 27 ++++++++++---
 drivers/tee/optee/optee_msg.h | 65 ++++++++++++++++++++++++++++++--
 drivers/tee/optee/optee_smc.h | 71 ++++++++++++++++++++++++++++++++++-
 3 files changed, 154 insertions(+), 9 deletions(-)

diff --git a/drivers/tee/optee/optee_ffa.h b/drivers/tee/optee/optee_ffa.h
index 257735ae5b56..7bd037200343 100644
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
+/* OP-TEE supports Restricted Memory for secure data path */
+#define OPTEE_FFA_SEC_CAP_RSTMEM	BIT(3)
 
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
+ * Release Restricted memory
+ *
+ * Call register usage:
+ * w3:    Service ID, OPTEE_FFA_RECLAIM_RSTMEM
+ * w4:    Shared memory handle, lower bits
+ * w5:    Shared memory handle, higher bits
+ * w6-w7: Not used (MBZ)
+ *
+ * Return register usage:
+ * w3:    Error code, 0 on success
+ * w4-w7: Note used (MBZ)
+ */
+#define OPTEE_FFA_RELEASE_RSTMEM	OPTEE_FFA_BLOCKING_CALL(8)
 
 /*
  * Call with struct optee_msg_arg as argument in the supplied shared memory
diff --git a/drivers/tee/optee/optee_msg.h b/drivers/tee/optee/optee_msg.h
index e8840a82b983..1b558526e7d9 100644
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
+ * Values used in OPTEE_MSG_CMD_LEND_RSTMEM below
+ * OPTEE_MSG_RSTMEM_RESERVED		Reserved
+ * OPTEE_MSG_RSTMEM_SECURE_VIDEO_PLAY	Secure Video Playback
+ * OPTEE_MSG_RSTMEM_TRUSTED_UI		Trused UI
+ * OPTEE_MSG_RSTMEM_SECURE_VIDEO_RECORD	Secure Video Recording
+ */
+#define OPTEE_MSG_RSTMEM_RESERVED		0
+#define OPTEE_MSG_RSTMEM_SECURE_VIDEO_PLAY	1
+#define OPTEE_MSG_RSTMEM_TRUSTED_UI		2
+#define OPTEE_MSG_RSTMEM_SECURE_VIDEO_RECORD	3
+
 /*
  * Do a secure call with struct optee_msg_arg as argument
  * The OPTEE_MSG_CMD_* below defines what goes in struct optee_msg_arg::cmd
@@ -337,6 +349,49 @@ struct optee_msg_arg {
  * OPTEE_MSG_CMD_STOP_ASYNC_NOTIF informs secure world that from now is
  * normal world unable to process asynchronous notifications. Typically
  * used when the driver is shut down.
+ *
+ * OPTEE_MSG_CMD_LEND_RSTMEM lends restricted memory. The passed normal
+ * physical memory is restricted from normal world access. The memory
+ * should be unmapped prior to this call since it becomes inaccessible
+ * during the request.
+ * Parameters are passed as:
+ * [in] param[0].attr			OPTEE_MSG_ATTR_TYPE_VALUE_INPUT
+ * [in] param[0].u.value.a		OPTEE_MSG_RSTMEM_* defined above
+ * [in] param[1].attr			OPTEE_MSG_ATTR_TYPE_TMEM_INPUT
+ * [in] param[1].u.tmem.buf_ptr		physical address
+ * [in] param[1].u.tmem.size		size
+ * [in] param[1].u.tmem.shm_ref		holds restricted memory reference
+ *
+ * OPTEE_MSG_CMD_RECLAIM_RSTMEM reclaims a previously lent restricted
+ * memory reference. The physical memory is accessible by the normal world
+ * after this function has return and can be mapped again. The information
+ * is passed as:
+ * [in] param[0].attr			OPTEE_MSG_ATTR_TYPE_VALUE_INPUT
+ * [in] param[0].u.value.a		holds restricted memory cookie
+ *
+ * OPTEE_MSG_CMD_GET_RSTMEM_CONFIG get configuration for a specific
+ * restricted memory use case. Parameters are passed as:
+ * [in] param[0].attr			OPTEE_MSG_ATTR_TYPE_VALUE_INOUT
+ * [in] param[0].value.a		OPTEE_MSG_RSTMEM_*
+ * [in] param[1].attr			OPTEE_MSG_ATTR_TYPE_{R,F}MEM_OUTPUT
+ * [in] param[1].u.{r,f}mem		Buffer or NULL
+ * [in] param[1].u.{r,f}mem.size	Provided size of buffer or 0 for query
+ * output for the restricted use case:
+ * [out] param[0].value.a		Minimal size of SDP memory
+ * [out] param[0].value.b		Required alignment of size and start of
+ *					restricted memory
+ * [out] param[1].{r,f}mem.size		Size of output data
+ * [out] param[1].{r,f}mem		If non-NULL, contains an array of
+ *					uint16_t holding endpoints that
+ *					must be included when lending
+ *					memory for this use case
+ *
+ * OPTEE_MSG_CMD_ASSIGN_RSTMEM assigns use-case to restricted memory
+ * previously lent using the FFA_LEND framework ABI. Parameters are passed
+ * as:
+ * [in] param[0].attr			OPTEE_MSG_ATTR_TYPE_VALUE_INPUT
+ * [in] param[0].u.value.a		holds restricted memory cookie
+ * [in] param[0].u.value.b		OPTEE_MSG_RSTMEM_* defined above
  */
 #define OPTEE_MSG_CMD_OPEN_SESSION	0
 #define OPTEE_MSG_CMD_INVOKE_COMMAND	1
@@ -346,6 +401,10 @@ struct optee_msg_arg {
 #define OPTEE_MSG_CMD_UNREGISTER_SHM	5
 #define OPTEE_MSG_CMD_DO_BOTTOM_HALF	6
 #define OPTEE_MSG_CMD_STOP_ASYNC_NOTIF	7
+#define OPTEE_MSG_CMD_LEND_RSTMEM	8
+#define OPTEE_MSG_CMD_RECLAIM_RSTMEM	9
+#define OPTEE_MSG_CMD_GET_RSTMEM_CONFIG	10
+#define OPTEE_MSG_CMD_ASSIGN_RSTMEM	11
 #define OPTEE_MSG_FUNCID_CALL_WITH_ARG	0x0004
 
 #endif /* _OPTEE_MSG_H */
diff --git a/drivers/tee/optee/optee_smc.h b/drivers/tee/optee/optee_smc.h
index 879426300821..abc379ce190c 100644
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
+/* Secure world supports Secure Data Path */
+#define OPTEE_SMC_SEC_CAP_SDP			BIT(8)
+/* Secure world supports dynamic restricted memory */
+#define OPTEE_SMC_SEC_CAP_DYNAMIC_RSTMEM	BIT(9)
 
 #define OPTEE_SMC_FUNCID_EXCHANGE_CAPABILITIES	9
 #define OPTEE_SMC_EXCHANGE_CAPABILITIES \
@@ -451,6 +454,72 @@ struct optee_smc_disable_shm_cache_result {
 
 /* See OPTEE_SMC_CALL_WITH_REGD_ARG above */
 #define OPTEE_SMC_FUNCID_CALL_WITH_REGD_ARG	19
+/*
+ * Get Secure Data Path memory config
+ *
+ * Returns the Secure Data Path memory config.
+ *
+ * Call register usage:
+ * a0   SMC Function ID, OPTEE_SMC_GET_SDP_CONFIG
+ * a2-6	Not used, must be zero
+ * a7	Hypervisor Client ID register
+ *
+ * Have config return register usage:
+ * a0	OPTEE_SMC_RETURN_OK
+ * a1	Physical address of start of SDP memory
+ * a2	Size of SDP memory
+ * a3	Not used
+ * a4-7	Preserved
+ *
+ * Not available register usage:
+ * a0	OPTEE_SMC_RETURN_ENOTAVAIL
+ * a1-3 Not used
+ * a4-7	Preserved
+ */
+#define OPTEE_SMC_FUNCID_GET_SDP_CONFIG		20
+#define OPTEE_SMC_GET_SDP_CONFIG \
+	OPTEE_SMC_FAST_CALL_VAL(OPTEE_SMC_FUNCID_GET_SDP_CONFIG)
+
+struct optee_smc_get_sdp_config_result {
+	unsigned long status;
+	unsigned long start;
+	unsigned long size;
+	unsigned long flags;
+};
+
+/*
+ * Get Secure Data Path dynamic memory config
+ *
+ * Returns the Secure Data Path dynamic memory config.
+ *
+ * Call register usage:
+ * a0	SMC Function ID, OPTEE_SMC_GET_DYN_SHM_CONFIG
+ * a2-6	Not used, must be zero
+ * a7	Hypervisor Client ID register
+ *
+ * Have config return register usage:
+ * a0	OPTEE_SMC_RETURN_OK
+ * a1	Minamal size of SDP memory
+ * a2	Required alignment of size and start of registered SDP memory
+ * a3	Not used
+ * a4-7	Preserved
+ *
+ * Not available register usage:
+ * a0	OPTEE_SMC_RETURN_ENOTAVAIL
+ * a1-3 Not used
+ * a4-7	Preserved
+ */
+
+#define OPTEE_SMC_FUNCID_GET_DYN_SDP_CONFIG	21
+#define OPTEE_SMC_GET_DYN_SDP_CONFIG \
+	OPTEE_SMC_FAST_CALL_VAL(OPTEE_SMC_FUNCID_GET_DYN_SDP_CONFIG)
+
+struct optee_smc_get_dyn_sdp_config_result {
+	unsigned long status;
+	unsigned long size;
+	unsigned long align;
+	unsigned long flags;
+};
 
 /*
  * Resume from RPC (for example after processing a foreign interrupt)
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

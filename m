Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKQlIV4T4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:50:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 08652412067
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:50:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16F7F44A45
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:37 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 99DA54047C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=mWUZysgp;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=MgspUVcN;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NGG9Qt3937652
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VGtqCA2sSEGVBfxM2+pOtYGJuWhGvcLCkjQcUGRaoOk=; b=mWUZysgpZBnQX/2G
	wuG7JAfjNH9xkMP2RD774Ch7eQXXEEW6DfNmwI/9kicOHEhE19zCZxZmUcBH7R+I
	9/NK0RB+ZeuScc97Z/gXQLpe6J0bI2VTyxZbvCLyjQ0uB+SRcmH5Lub7h/CMjK7E
	Ys43tdgyPA0x89FJOtZJr2VQNIjcj0s6jBlNrfRtlxnzVtfc0lglwOQA8uFgggJF
	4XFg/0kBYW52B3t/sjYGv1wnZZnX5wgZUQrkUerqMNNTknAyy0Nr1/qJwo0/uIpi
	N7/lr9IgLGiqdxcPUqkWSaNUCc/qA4KwA/wuZqAUgB2s0yaz/HQehzulI6Y8jxld
	+g+sgw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgt8mgjk5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:23 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a7d7b87977so49296935ad.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 11:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771873822; x=1772478622; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VGtqCA2sSEGVBfxM2+pOtYGJuWhGvcLCkjQcUGRaoOk=;
        b=MgspUVcNHYmr8kaDTEcTh3EU9gGIqKVM0xOeOUVtYMe6py8QpQqsNBGDYsJUUsdNrr
         6wopmcgKRSroDLlxxXNLideazWcwM9p/g3iwrQBXW2quhWvompCJ48v9ohsgjN/exvyt
         0UYsD97dXocRyKgGFWzMOXbrv0wl8/gwu1Op5gQ7HK6fW/t3DG7yopnAcACLHIUi+5gB
         FJE/Dah8iZD6E97I802nA5vOMTyZcHZehrGuM+PkF2wS7cXhmRoZM/9uJCqv7t3q039Z
         HzXx1cMjQ+0i+L63Q/NiuCMNGfhB5WVRfM96+VQI1mmALOzC2Ge5DljQZ3deh53EIamL
         StsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771873822; x=1772478622;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VGtqCA2sSEGVBfxM2+pOtYGJuWhGvcLCkjQcUGRaoOk=;
        b=bmkbggCcAmnHlmDrduEdPyd3Tt5j0Nov3akDNsnjIZ+kIRW1BoouF7jaxup58roxW+
         0tPTjMBF1ar6aqFIpKAY2U+mh46WSAA2CfansmZcwQZJyiipMDBaMld1znKMO6y2tqqM
         JCsBgqX6/oWufwFFI30QURptOzSOLcdXSlrFIem0/s0goAjbw9/Cr64su/BCQHIJhSNL
         5H8hyowee6B2PcViHDyu838tlOOdG9qFpqIzPr7XbGk/pL78yjjFl/yU3Sm5om02/E5T
         6DHhTxKmOQw0HFkSKJowF3vdwVngBL6z9igS46Vhlj91IbkpXPdorLk0a8gXI/rl1z0V
         HHfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXokgXGAOxnIP4M/v0UAzh9++2ObTjYBSgMKAZdEIqbu0PQx7kuR0/EpT/UWyD2b0tvF6fJsqMHj3JjUOXQ@lists.linaro.org
X-Gm-Message-State: AOJu0Yz4PCR5YRfcfeMBbotWQl5t917CsWnMEwEBVuRXrC3WrXrX2h5u
	Ev9rSLDpnr/lpk72tN37UnEp9+UYSrw8skfpnOZM40r8u1I7sMLjFbw2WsczSCQilBXnJzKZoIZ
	k9dXs9Tj2Wq3vGy4NnfXp+7zcI6GqJC4KryJn1NQUktburM1u/tOzPZieTPFybHmxSwTlzQ==
X-Gm-Gg: ATEYQzxTkLT9MxNidaslH/lShtSVcduyI3lx9p6NmM8VEfvB5+h53/Q/VVA8GY2uC6p
	KSfCKJZSkSuauqehmtofcPeCQlLyEiUmkXvhA7XkBkdPVONg6iFrQhJ+2hOCVLbIp3o6WoY6Fan
	Vd3GVKiAlnFbe3lqY9DCBAsQv/6busdB8XsPyz6c2QRhKqzSMVhTq+rdTDQHsb8s3gDffp+09IC
	82une2sNJs1Wq171t37OLWvLLHFiD+0ynTxlCgg8FCaWZ6/H3KDgIjJco72+WdXrSLbbizplYVG
	kDFsOojTqJnIh65LNjJYU2XNut53QwAaHkn9s5bmEU9JnCEa914U3c2y23y4yKs0Tqd6STOp7g0
	PzJ6+auGQN9AvTZ48/ywK1ka79qj/W4QqddjVGdcd/2+5fXgExykyPw==
X-Received: by 2002:a17:903:246:b0:2a2:d2e7:1601 with SMTP id d9443c01a7336-2ad74541768mr90428605ad.48.1771873822032;
        Mon, 23 Feb 2026 11:10:22 -0800 (PST)
X-Received: by 2002:a17:903:246:b0:2a2:d2e7:1601 with SMTP id d9443c01a7336-2ad74541768mr90428265ad.48.1771873821476;
        Mon, 23 Feb 2026 11:10:21 -0800 (PST)
Received: from hu-ekangupt-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74e34e18sm83501505ad.10.2026.02.23.11.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:10:20 -0800 (PST)
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 00:39:02 +0530
MIME-Version: 1.0
Message-Id: <20260224-qda-firstpost-v1-8-fe46a9c1a046@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
In-Reply-To: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
To: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771873753; l=6299;
 i=ekansh.gupta@oss.qualcomm.com; s=20260223; h=from:subject:message-id;
 bh=6EHrB7O8xO1KO3JeXaSJmhEvz4UF48aY+wHefteIn5o=;
 b=PQoJ0WQ74WdOsWKY6SUsnfL5qbidltdPL4pFBld3IPPhdFunIRAZUD0aVWSiqeKX4Q+C1O8us
 HJ7xauW+RB+CD3tKcCU67VQ4JDbx2VlgLnYZovthqbqOs1Z9EiYO/B8
X-Developer-Key: i=ekansh.gupta@oss.qualcomm.com; a=ed25519;
 pk=n0SepARizye+pYjhjg1RA5J+Nq4+IJbyRcBybU+/ERQ=
X-Authority-Analysis: v=2.4 cv=J/unLQnS c=1 sm=1 tr=0 ts=699ca61f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=eDbiE4MX-y_Gg5q49BQA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: JbeHlgaFOB8CQMuqpcP-Coz5Nb4UqGs8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2NiBTYWx0ZWRfX9cBp2Pckcp75
 kyIKtCC+iDzQOCaGoztgOMTzEx09YfZNTzFAslGRXEI835s7d3oOmgo18b86F+IYS78Wn3nSEgX
 8ABabDXv/WphBqpYYGmtDZzYCnOvKRL3F9rs79cYCUiYDFMIY4Dnw2eT7esut+sINmdfDe973Qs
 tI0tgrb76AYeGeubpiWsrNe2wokP3BPP+FcumWqQrdtVhsDjPwFETFEz9yanTgzonCUmtKXoLPK
 VcExJOPYTqIeHfaKfDCF1lDAVDDPvEjmjYseCfQG3wMPhhHPOLHhqyLHpwgsEkuCvwdSyDgHRUB
 xytYCllO6UyfvWcWFSwfq+KrHphtixzc3Jar/reSD6kYoAFtFeEaOccjmwIAWG0rXduqn+LNvbN
 V/zUacAL5eXxSa3Iab1BN6dFzr+HdYvzATVo9s9xSC5vHxLqXspMarNw8RDm9Eulbwhhk5bflfJ
 3klIWCZycqjjwnYlPIw==
X-Proofpoint-GUID: JbeHlgaFOB8CQMuqpcP-Coz5Nb4UqGs8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1011 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230166
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3NCZJVFIAYB2WCXN2TARKG3RX65NPUCD
X-Message-ID-Hash: 3NCZJVFIAYB2WCXN2TARKG3RX65NPUCD
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:43 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 08/18] accel/qda: Add per-file DRM context and open/close handling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3NCZJVFIAYB2WCXN2TARKG3RX65NPUCD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[1245];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 08652412067
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce per-file and per-user context for the QDA DRM accelerator
driver. A new qda_file_priv structure is stored in file->driver_priv
for each open file descriptor, and a qda_user object is allocated per
client with a unique client_id generated from an atomic counter in
qda_dev.

The DRM driver now provides qda_open() and qda_postclose() callbacks.
qda_open() resolves the qda_dev from the drm_device, allocates the
qda_file_priv and qda_user structures, and attaches them to the DRM
file. qda_postclose() tears down the per-file context and frees the
qda_user object when the file is closed.

This prepares the QDA driver to track per-process state for future
features such as per-client memory mappings, job submission contexts,
and access control over DSP compute resources.

Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
---
 drivers/accel/qda/qda_drv.c | 117 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/accel/qda/qda_drv.h |  30 ++++++++++++
 2 files changed, 147 insertions(+)

diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
index a9113ec78fa2..bf95fc782cf8 100644
--- a/drivers/accel/qda/qda_drv.c
+++ b/drivers/accel/qda/qda_drv.c
@@ -12,11 +12,127 @@
 #include "qda_drv.h"
 #include "qda_rpmsg.h"
 
+static struct qda_drm_priv *get_drm_priv_from_device(struct drm_device *dev)
+{
+	if (!dev)
+		return NULL;
+
+	return (struct qda_drm_priv *)dev->dev_private;
+}
+
+static struct qda_dev *get_qdev_from_drm_device(struct drm_device *dev)
+{
+	struct qda_drm_priv *drm_priv;
+
+	if (!dev) {
+		qda_dbg(NULL, "Invalid drm_device\n");
+		return NULL;
+	}
+
+	drm_priv = get_drm_priv_from_device(dev);
+	if (!drm_priv) {
+		qda_dbg(NULL, "No drm_priv in dev_private\n");
+		return NULL;
+	}
+
+	return drm_priv->qdev;
+}
+
+static struct qda_user *alloc_qda_user(struct qda_dev *qdev)
+{
+	struct qda_user *qda_user;
+
+	qda_user = kzalloc_obj(*qda_user, GFP_KERNEL);
+	if (!qda_user)
+		return NULL;
+
+	qda_user->client_id = atomic_inc_return(&qdev->client_id_counter);
+	qda_user->qda_dev = qdev;
+
+	qda_dbg(qdev, "Allocated qda_user with client_id=%u\n", qda_user->client_id);
+	return qda_user;
+}
+
+static void free_qda_user(struct qda_user *qda_user)
+{
+	if (!qda_user)
+		return;
+
+	qda_dbg(qda_user->qda_dev, "Freeing qda_user client_id=%u\n", qda_user->client_id);
+
+	kfree(qda_user);
+}
+
+static int qda_open(struct drm_device *dev, struct drm_file *file)
+{
+	struct qda_user *qda_user;
+	struct qda_file_priv *qda_file_priv;
+	struct qda_dev *qdev;
+
+	if (!file) {
+		qda_dbg(NULL, "Invalid file pointer\n");
+		return -EINVAL;
+	}
+
+	qdev = get_qdev_from_drm_device(dev);
+	if (!qdev) {
+		qda_dbg(NULL, "Failed to get qdev from drm_device\n");
+		return -EINVAL;
+	}
+
+	qda_file_priv = kzalloc(sizeof(*qda_file_priv), GFP_KERNEL);
+	if (!qda_file_priv)
+		return -ENOMEM;
+
+	qda_file_priv->pid = current->pid;
+
+	qda_user = alloc_qda_user(qdev);
+	if (!qda_user) {
+		qda_dbg(qdev, "Failed to allocate qda_user\n");
+		kfree(qda_file_priv);
+		return -ENOMEM;
+	}
+
+	file->driver_priv = qda_file_priv;
+	qda_file_priv->qda_user = qda_user;
+
+	qda_dbg(qdev, "Device opened successfully for PID %d\n", current->pid);
+
+	return 0;
+}
+
+static void qda_postclose(struct drm_device *dev, struct drm_file *file)
+{
+	struct qda_dev *qdev;
+	struct qda_file_priv *qda_file_priv;
+	struct qda_user *qda_user;
+
+	qdev = get_qdev_from_drm_device(dev);
+	if (!qdev || atomic_read(&qdev->removing)) {
+		qda_dbg(NULL, "Device unavailable or removing\n");
+		return;
+	}
+
+	qda_file_priv = (struct qda_file_priv *)file->driver_priv;
+	if (qda_file_priv) {
+		qda_user = qda_file_priv->qda_user;
+		if (qda_user)
+			free_qda_user(qda_user);
+
+		kfree(qda_file_priv);
+		file->driver_priv = NULL;
+	}
+
+	qda_dbg(qdev, "Device closed for PID %d\n", current->pid);
+}
+
 DEFINE_DRM_ACCEL_FOPS(qda_accel_fops);
 
 static struct drm_driver qda_drm_driver = {
 	.driver_features = DRIVER_COMPUTE_ACCEL,
 	.fops			= &qda_accel_fops,
+	.open			= qda_open,
+	.postclose		= qda_postclose,
 	.name = DRIVER_NAME,
 	.desc = "Qualcomm DSP Accelerator Driver",
 };
@@ -58,6 +174,7 @@ static void init_device_resources(struct qda_dev *qdev)
 
 	mutex_init(&qdev->lock);
 	atomic_set(&qdev->removing, 0);
+	atomic_set(&qdev->client_id_counter, 0);
 }
 
 static int init_memory_manager(struct qda_dev *qdev)
diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
index 2b80401a3741..e0ba37702a86 100644
--- a/drivers/accel/qda/qda_drv.h
+++ b/drivers/accel/qda/qda_drv.h
@@ -10,6 +10,7 @@
 #include <linux/list.h>
 #include <linux/mutex.h>
 #include <linux/rpmsg.h>
+#include <linux/types.h>
 #include <linux/xarray.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
@@ -20,6 +21,33 @@
 /* Driver identification */
 #define DRIVER_NAME "qda"
 
+/**
+ * struct qda_file_priv - Per-process private data for DRM file
+ *
+ * This structure tracks per-process state for each open file descriptor.
+ * It maintains the IOMMU device assignment and links to the legacy qda_user
+ * structure for compatibility with existing code.
+ */
+struct qda_file_priv {
+	/* Process ID for tracking */
+	pid_t pid;
+	/* Pointer to qda_user structure for backward compatibility */
+	struct qda_user *qda_user;
+};
+
+/**
+ * struct qda_user - Per-user context for remote processor interaction
+ *
+ * This structure maintains per-user state for interactions with the
+ * remote processor, including memory mappings and pending operations.
+ */
+struct qda_user {
+	/* Unique client identifier */
+	u32 client_id;
+	/* Back-pointer to device structure */
+	struct qda_dev *qda_dev;
+};
+
 /**
  * struct qda_drm_priv - DRM device private data for QDA device
  *
@@ -52,6 +80,8 @@ struct qda_dev {
 	struct qda_drm_priv *drm_priv;
 	/* Flag indicating device removal in progress */
 	atomic_t removing;
+	/* Atomic counter for generating unique client IDs */
+	atomic_t client_id_counter;
 	/* Name of the DSP (e.g., "cdsp", "adsp") */
 	char dsp_name[16];
 	/* Compute context-bank (CB) child devices */

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

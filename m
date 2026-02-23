Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNyAIKoT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:51:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2147A4120D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:51:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34D1344D04
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:51:53 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id B82D54047F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:11:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=N1iFIXHg;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=CxjsnWQj;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NIIC793733304
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:11:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1YcyaViTxcooVnulUjdLkWaOqoAy4ruLjQRxT7ZzhHU=; b=N1iFIXHgcy8b50LJ
	aLEG3rPJp5nd1Qmec0T0DOw7dNWMqZIj84vz5bgI4b2mN3Y9rtBI60rNyiIy13k+
	u/MDuxYMtOAJEbhHmTVS2WYU3rZJsrxPzhbMXWSZpP/hYC+rYUKOi6XDN+h5jA+P
	UlF1c/hQn2/89AoyvXqvNxEYJ9aN2aq36bBadPMBQq9raJu+obaZ8ILFxsFphy72
	qN/V7u/v90L/DifeLQgYsoDQKue11lRvQcsxvHF0titXdzRGLArZxODo8Er4I0rb
	rRw2yWmEo60NDVjh8UK3HiflKlZkfMLcprkoS6i8vKxP8HBVGXTSI3kbUpZq6CNL
	9ywM+w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn7t9mce-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:11:30 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ad147cdf07so49946225ad.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 11:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771873889; x=1772478689; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1YcyaViTxcooVnulUjdLkWaOqoAy4ruLjQRxT7ZzhHU=;
        b=CxjsnWQjRswyiZvJlmb7l5Luke8jSX9FSEd/+6EnYBdV8q1nw1H6ewiet4QH7lGsZd
         2mFyL81foRWgFAv72Bp+TNPmtpvojHrJP72c1knYPsGu7WhwW9CHtbdh+PEvJ6w3e6y1
         tcul6RbiuvBCZXP3H4oVm7C8tdGWW2bKRhjUohu7d6Ky81QHlz7NuoZ6nFySbqLZm4x4
         +ErSvef+ut9DXwCg9fsmZ55jxsV24h1EMtnzI9qkCxqXAYoiw5788yUm+OsQttfe/732
         +VlaKvqsl+yv/nOcvdlYVuyU1opa7ewT7chiD94WCXUXBiP9UyADovXrnJUROh7W+xec
         JGhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771873889; x=1772478689;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1YcyaViTxcooVnulUjdLkWaOqoAy4ruLjQRxT7ZzhHU=;
        b=oHP6XzvbO3uXkRf1Xb98Vc/W/9HidJ45vWsRsQ3m1Ey+yAzB7D48P8ef1TyFXqeyBK
         UKvc0JIP6Xn8t+dn4IkTB9VvIHpnmelzICqYhk8y1iSKsLFh36sGybtomVvQMnmSpXih
         eiDEzn62phyDQJ5gZVgEsLsU78cIWbfvsQMrvvQW/hRmJeF1uTHx428y2mBGmtfAx/I5
         hG70j5skqhBvfMq/6LmCkRNTd3cowJ3NsPXN46vsQfPCl+e81YITEYwHxWJ+0tF2pGqj
         /YW43hrx9chagT3izSBai/KY8tPY67xLFjpP6niyJChGeWASgMobw6NXTIFwGNcM3iLk
         v1JA==
X-Forwarded-Encrypted: i=1; AJvYcCWGvF9CYujACcCtrqbUpZ0KEVShbegMHFuAADUORE4OLo3WW2Y69IndKuHLVffvvUgNySmYvNLHHHbC17C7@lists.linaro.org
X-Gm-Message-State: AOJu0Yw2mbebQztSVQINh7UlXGzvOwNnP9QBXduJawxpEoRZDnNOWg7Z
	cpUaQ2YXFejNEa8bcN/lBtqYuHW7VPBz51DW6hHIMeVjqEgJcTQxM6sbCTUSzgBtaD6Rz60uSRp
	hRAXeSGQIO0M6p8Vrui+GB3uGmB2oqbAzJHgwFysw6zM8Mcf5kXTHGq3gPOqMcgjTU8sp0A==
X-Gm-Gg: ATEYQzywv3TCqGCz8kF2n98pQ50Co9wGQz8MGG/Qx02yoqscFYYOtH16AqbMzvewmU2
	lrzAn+VVvCwvxk+Vr3gCL6jTobGN5mq4jZesYCnDEncCDUwP7m7ZFDqwFUgICNXQ5lglF9itOA6
	Afeh6IRPgDA/QlM2/5MmSv4nsjAZRIMp47Ua8LkEQhv7P9li3KdpDYxAuqZmJbKr91lViGd9i9M
	UnpZij+OyX6ztfV/wf2My7U+Mz3wd8xATh4NUImXmceXtXvDN9avPmMokWqmJm1zYkxa7yOjuia
	hXTwsMWkcPfM8Yz/UTD4I6YX52Og29+sDM2/nGeJmgLODtCIaQMgQlI56DwrMrKX/MNK6H1zE+p
	5p3+1YUzF3FBCPfVo522tZFmXKQhIdOcdFSa64l+GBQ3DdxvUgHCR6Q==
X-Received: by 2002:a17:903:1904:b0:295:5132:1a99 with SMTP id d9443c01a7336-2ad74579492mr79402525ad.44.1771873888944;
        Mon, 23 Feb 2026 11:11:28 -0800 (PST)
X-Received: by 2002:a17:903:1904:b0:295:5132:1a99 with SMTP id d9443c01a7336-2ad74579492mr79401995ad.44.1771873888069;
        Mon, 23 Feb 2026 11:11:28 -0800 (PST)
Received: from hu-ekangupt-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74e34e18sm83501505ad.10.2026.02.23.11.11.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:11:27 -0800 (PST)
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 00:39:11 +0530
MIME-Version: 1.0
Message-Id: <20260224-qda-firstpost-v1-17-fe46a9c1a046@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771873753; l=11295;
 i=ekansh.gupta@oss.qualcomm.com; s=20260223; h=from:subject:message-id;
 bh=1PmvXih27fv395JvL29ReUn9Gmf8gRCsNiO0qutijQI=;
 b=mE7l7RLy0M+FCCGwxwINXhgJuZC05kAybBOnQR7shisgy2iYnbrwqDdQhVViM/3bYAhjbdhdd
 5Y4jb+WaTlODg17SQjKbNwhckAaM0dcvEn0Cm4+BmxwMgFeM4kLd1uh
X-Developer-Key: i=ekansh.gupta@oss.qualcomm.com; a=ed25519;
 pk=n0SepARizye+pYjhjg1RA5J+Nq4+IJbyRcBybU+/ERQ=
X-Authority-Analysis: v=2.4 cv=c5OmgB9l c=1 sm=1 tr=0 ts=699ca662 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=Y7CjE-pOohNFxlC5r9QA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: lZIJS_T0liaqcveq307UTBIShwWxBbrS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2NiBTYWx0ZWRfX58j4nS8FCfmd
 TmyYMPW+xC4d0x0wgEKot0D3Cxu5yHTkwvhXyfBjb13NLeGGgNNz8IvSr8gocNI/ZynjxXdaO3S
 roJjV5dEfr+5d/1SjyKUNLVNIxPcDoIKTUq31oz+vMmvbOI+8I1g/eueJeXp90LQfjPZ/HhkETD
 MwEwCGcNspwm0R4j7o06xdQGhW9jsWdESrOlmFvJw7v74Ntd7n9D68RRHNOQkh2Xb/nU4yLa8Pa
 R+bCEg6TsxEV8TBVCYdK8S8w5y4BzVSv2C0h4JfbNLKdDiE6KmqPgMQy7Deg6ev90Pjgt5X6rRi
 D3kDSXu/o9WetE12XqxExIbsdNL8dI0noCKviS34luCEwd7fCSM3SHaC9GC3S+2su67Q0f24X/S
 vEQzwV3w8e5rD9Ert9Us5rANx3phBrDckmXcTiMmSMWB3GmvqY92EFcsvV7EOQmu6jQo9boxzZK
 4ZLjNo9RHfzCcoAzTPg==
X-Proofpoint-ORIG-GUID: lZIJS_T0liaqcveq307UTBIShwWxBbrS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230166
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OO4T2FTNCI6PFL2XK2GBQMVOEE52CSXZ
X-Message-ID-Hash: OO4T2FTNCI6PFL2XK2GBQMVOEE52CSXZ
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:47 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 17/18] accel/qda: Add FastRPC-based DSP memory unmapping support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OO4T2FTNCI6PFL2XK2GBQMVOEE52CSXZ/>
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
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,oss.qualcomm.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 2147A4120D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a DRM_QDA_MUNMAP ioctl and corresponding FastRPC plumbing to
unmap previously mapped buffers from the DSP virtual address space.
The new qda_mem_unmap UAPI structure supports both legacy unmap
semantics, where a DSP virtual address is provided directly, and
handle-based MEM_UNMAP semantics using a buffer handle, virtual
address and size.

On the FastRPC side new method identifiers FASTRPC_RMID_INIT_MUNMAP
and FASTRPC_RMID_INIT_MEM_UNMAP are introduced along with request
message structures for legacy and attribute-based unmap operations.
The fastrpc_prepare_args() path gains handlers that copy the
qda_mem_unmap parameters from user space, build the appropriate
unmap request payload and encode a single input buffer in the
scalars so that the existing invoke infrastructure can be reused.

The qda_ioctl_munmap() handler selects the appropriate FastRPC method
based on the qda_mem_unmap request type and forwards the unmap
operation through fastrpc_invoke(), allowing RPMsg to deliver the
request to the DSP. This completes the basic memory management flow
for QDA FastRPC clients by providing explicit unmap operations to
release DSP mappings established via DRM_QDA_MAP.

Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
---
 drivers/accel/qda/qda_drv.c     |  1 +
 drivers/accel/qda/qda_fastrpc.c | 80 +++++++++++++++++++++++++++++++++++++++++
 drivers/accel/qda/qda_fastrpc.h | 34 ++++++++++++++++++
 drivers/accel/qda/qda_ioctl.c   | 22 ++++++++++++
 drivers/accel/qda/qda_ioctl.h   | 13 +++++++
 include/uapi/drm/qda_accel.h    | 34 +++++++++++++++++-
 6 files changed, 183 insertions(+), 1 deletion(-)

diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
index 5f43c97ebc25..072a788b0980 100644
--- a/drivers/accel/qda/qda_drv.c
+++ b/drivers/accel/qda/qda_drv.c
@@ -164,6 +164,7 @@ static const struct drm_ioctl_desc qda_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(QDA_INIT_ATTACH, qda_ioctl_attach, 0),
 	DRM_IOCTL_DEF_DRV(QDA_INIT_CREATE, qda_ioctl_create, 0),
 	DRM_IOCTL_DEF_DRV(QDA_MAP, qda_ioctl_mmap, 0),
+	DRM_IOCTL_DEF_DRV(QDA_MUNMAP, qda_ioctl_munmap, 0),
 	DRM_IOCTL_DEF_DRV(QDA_INVOKE, qda_ioctl_invoke, 0),
 };
 
diff --git a/drivers/accel/qda/qda_fastrpc.c b/drivers/accel/qda/qda_fastrpc.c
index 25b5d53ba2d6..53d505b76aad 100644
--- a/drivers/accel/qda/qda_fastrpc.c
+++ b/drivers/accel/qda/qda_fastrpc.c
@@ -869,6 +869,80 @@ static int fastrpc_prepare_args_mem_map_attr(struct fastrpc_invoke_context *ctx,
 	return 0;
 }
 
+static int fastrpc_prepare_args_munmap(struct fastrpc_invoke_context *ctx, char __user *argp)
+{
+	struct fastrpc_invoke_args *args;
+	struct fastrpc_munmap_req_msg *req_msg;
+	struct qda_mem_unmap uargs;
+	void *req;
+	int err;
+
+	err = copy_from_user_or_kernel(&uargs, argp, sizeof(uargs));
+	if (err)
+		return err;
+
+	args = kzalloc_obj(*args, GFP_KERNEL);
+	if (!args)
+		return -ENOMEM;
+
+	req = kzalloc_obj(*req_msg, GFP_KERNEL);
+	if (!req) {
+		kfree(args);
+		return -ENOMEM;
+	}
+	req_msg = (struct fastrpc_munmap_req_msg *)req;
+
+	req_msg->client_id = ctx->client_id;
+	req_msg->size = uargs.size;
+	req_msg->vaddr = uargs.vaddrout;
+
+	setup_single_arg(args, req_msg, sizeof(*req_msg));
+	ctx->sc = FASTRPC_SCALARS(FASTRPC_RMID_INIT_MUNMAP, 1, 0);
+	ctx->args = args;
+	ctx->req = req;
+	ctx->handle = FASTRPC_INIT_HANDLE;
+
+	return 0;
+}
+
+static int fastrpc_prepare_args_mem_unmap_attr(struct fastrpc_invoke_context *ctx,
+					       char __user *argp)
+{
+	struct fastrpc_invoke_args *args;
+	struct fastrpc_mem_unmap_req_msg *req_msg;
+	struct qda_mem_unmap uargs;
+	void *req;
+	int err;
+
+	err = copy_from_user_or_kernel(&uargs, argp, sizeof(uargs));
+	if (err)
+		return err;
+
+	args = kzalloc_obj(*args, GFP_KERNEL);
+	if (!args)
+		return -ENOMEM;
+
+	req = kzalloc_obj(*req_msg, GFP_KERNEL);
+	if (!req) {
+		kfree(args);
+		return -ENOMEM;
+	}
+	req_msg = (struct fastrpc_mem_unmap_req_msg *)req;
+
+	req_msg->client_id = ctx->client_id;
+	req_msg->fd = uargs.fd;
+	req_msg->vaddrin = uargs.vaddr;
+	req_msg->len = uargs.size;
+
+	setup_single_arg(args, req_msg, sizeof(*req_msg));
+	ctx->sc = FASTRPC_SCALARS(FASTRPC_RMID_INIT_MEM_UNMAP, 1, 0);
+	ctx->args = args;
+	ctx->req = req;
+	ctx->handle = FASTRPC_INIT_HANDLE;
+
+	return 0;
+}
+
 int fastrpc_prepare_args(struct fastrpc_invoke_context *ctx, char __user *argp)
 {
 	int err;
@@ -895,6 +969,12 @@ int fastrpc_prepare_args(struct fastrpc_invoke_context *ctx, char __user *argp)
 	case FASTRPC_RMID_INIT_MEM_MAP:
 		err = fastrpc_prepare_args_mem_map_attr(ctx, argp);
 		break;
+	case FASTRPC_RMID_INIT_MUNMAP:
+		err = fastrpc_prepare_args_munmap(ctx, argp);
+		break;
+	case FASTRPC_RMID_INIT_MEM_UNMAP:
+		err = fastrpc_prepare_args_mem_unmap_attr(ctx, argp);
+		break;
 	default:
 		return -EINVAL;
 	}
diff --git a/drivers/accel/qda/qda_fastrpc.h b/drivers/accel/qda/qda_fastrpc.h
index b45ccc77d9d1..aa396fdc8e7f 100644
--- a/drivers/accel/qda/qda_fastrpc.h
+++ b/drivers/accel/qda/qda_fastrpc.h
@@ -261,9 +261,11 @@ struct fastrpc_invoke_context {
 #define FASTRPC_RMID_INIT_ATTACH	0	/* Attach to DSP session */
 #define FASTRPC_RMID_INIT_RELEASE	1	/* Release DSP session */
 #define FASTRPC_RMID_INIT_MMAP		4	/* Map memory region to DSP */
+#define FASTRPC_RMID_INIT_MUNMAP	5	/* Unmap DSP memory region */
 #define FASTRPC_RMID_INIT_CREATE	6	/* Create DSP process */
 #define FASTRPC_RMID_INIT_CREATE_ATTR	7	/* Create DSP process with attributes */
 #define FASTRPC_RMID_INIT_MEM_MAP	10	/* Map DMA buffer with attributes to DSP */
+#define FASTRPC_RMID_INIT_MEM_UNMAP	11	/* Unmap DMA buffer from DSP */
 #define FASTRPC_RMID_INVOKE_DYNAMIC	0xFFFFFFFF	/* Dynamic method invocation */
 
 /* Common handle for initialization operations */
@@ -280,6 +282,38 @@ struct fastrpc_invoke_context {
 
 /* Message structures for internal FastRPC calls */
 
+/**
+ * struct fastrpc_mem_unmap_req_msg - Memory unmap request message with attributes
+ *
+ * This message structure is sent to the DSP to request unmapping
+ * of a previously mapped memory region (ATTR request).
+ */
+struct fastrpc_mem_unmap_req_msg {
+	/* Client identifier for the session */
+	s32 client_id;
+	/* Handle of the buffer */
+	s32 fd;
+	/* Virtual address to unmap from DSP */
+	u64 vaddrin;
+	/* Size of the region to unmap in bytes */
+	u64 len;
+};
+
+/**
+ * struct fastrpc_munmap_req_msg - Legacy memory unmap request message
+ *
+ * This message structure is sent to the DSP to request unmapping
+ * of a previously mapped memory region.
+ */
+struct fastrpc_munmap_req_msg {
+	/* Client identifier for the session */
+	int client_id;
+	/* Virtual address to unmap from DSP */
+	u64 vaddr;
+	/* Size of the region to unmap in bytes */
+	u64 size;
+};
+
 /**
  * struct fastrpc_mem_map_req_msg - Memory map request message with attributes
  *
diff --git a/drivers/accel/qda/qda_ioctl.c b/drivers/accel/qda/qda_ioctl.c
index 4eb932e2c9ae..a7a8ff283498 100644
--- a/drivers/accel/qda/qda_ioctl.c
+++ b/drivers/accel/qda/qda_ioctl.c
@@ -247,3 +247,25 @@ int qda_ioctl_mmap(struct drm_device *dev, void *data, struct drm_file *file_pri
 		return -EINVAL;
 	}
 }
+
+int qda_ioctl_munmap(struct drm_device *dev, void *data, struct drm_file *file_priv)
+{
+	struct qda_mem_unmap *unmap_req;
+
+	if (!data)
+		return -EINVAL;
+
+	unmap_req = (struct qda_mem_unmap *)data;
+
+	switch (unmap_req->request) {
+	case QDA_MUNMAP_REQUEST_LEGACY:
+		return fastrpc_invoke(FASTRPC_RMID_INIT_MUNMAP, dev, data, file_priv);
+
+	case QDA_MUNMAP_REQUEST_ATTR:
+		return fastrpc_invoke(FASTRPC_RMID_INIT_MEM_UNMAP, dev, data, file_priv);
+
+	default:
+		qda_err(NULL, "Invalid munmap request type: %u\n", unmap_req->request);
+		return -EINVAL;
+	}
+}
diff --git a/drivers/accel/qda/qda_ioctl.h b/drivers/accel/qda/qda_ioctl.h
index d402d6715b41..759ba3b98394 100644
--- a/drivers/accel/qda/qda_ioctl.h
+++ b/drivers/accel/qda/qda_ioctl.h
@@ -102,4 +102,17 @@ int qda_ioctl_create(struct drm_device *dev, void *data, struct drm_file *file_p
  */
 int qda_ioctl_mmap(struct drm_device *dev, void *data, struct drm_file *file_priv);
 
+/**
+ * qda_ioctl_munmap - Unmap memory from DSP address space
+ * @dev: DRM device structure
+ * @data: User-space data containing memory unmapping parameters
+ * @file_priv: DRM file private data
+ *
+ * This IOCTL handler unmaps a previously mapped buffer from the DSP's
+ * virtual address space, releasing the associated resources.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int qda_ioctl_munmap(struct drm_device *dev, void *data, struct drm_file *file_priv);
+
 #endif /* _QDA_IOCTL_H */
diff --git a/include/uapi/drm/qda_accel.h b/include/uapi/drm/qda_accel.h
index 9151ba7adfaf..53f4a9955a87 100644
--- a/include/uapi/drm/qda_accel.h
+++ b/include/uapi/drm/qda_accel.h
@@ -24,7 +24,7 @@ extern "C" {
 #define DRM_QDA_INIT_ATTACH		0x03
 #define DRM_QDA_INIT_CREATE		0x04
 #define DRM_QDA_MAP			0x05
-/* 0x06 is reserved for other request */
+#define DRM_QDA_MUNMAP			0x06
 #define DRM_QDA_INVOKE			0x07
 
 /*
@@ -43,6 +43,8 @@ extern "C" {
 #define DRM_IOCTL_QDA_INIT_CREATE	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_INIT_CREATE, \
 						 struct qda_init_create)
 #define DRM_IOCTL_QDA_MAP		DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_MAP, struct qda_mem_map)
+#define DRM_IOCTL_QDA_MUNMAP		DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_MUNMAP, \
+						 struct qda_mem_unmap)
 #define DRM_IOCTL_QDA_INVOKE		DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_INVOKE, \
 						 struct qda_invoke_args)
 
@@ -50,6 +52,9 @@ extern "C" {
 #define QDA_MAP_REQUEST_LEGACY    1  /* Legacy MMAP operation */
 #define QDA_MAP_REQUEST_ATTR      2  /* Handle-based MEM_MAP operation with attributes */
 
+/* Request type definitions for qda_mem_unmap */
+#define QDA_MUNMAP_REQUEST_LEGACY    1  /* Legacy MUNMAP operation */
+#define QDA_MUNMAP_REQUEST_ATTR      2  /* Handle-based MEM_UNMAP operation */
 /**
  * struct drm_qda_query - Device information query structure
  * @dsp_name: Name of DSP (e.g., "adsp", "cdsp", "cdsp1", "gdsp0", "gdsp1")
@@ -185,6 +190,33 @@ struct qda_mem_map {
 	__u64 vaddrout;
 };
 
+/**
+ * struct qda_mem_unmap - Memory unmapping request structure
+ * @request: Request type (QDA_MUNMAP_REQUEST_LEGACY or QDA_MUNMAP_REQUEST_ATTR)
+ * @fd: Handle (used for ATTR request)
+ * @vaddr: Virtual address (used for ATTR request)
+ * @vaddrout: DSP virtual address (used for LEGACY request)
+ * @size: Size of the memory region to unmap in bytes
+ *
+ * This structure is used to request unmapping of a previously mapped
+ * memory region from the DSP's virtual address space.
+ *
+ * For QDA_MUNMAP_REQUEST_LEGACY (value 1):
+ *   - Uses fields: vaddrout, size
+ *   - Legacy MUNMAP operation for backward compatibility
+ *
+ * For QDA_MUNMAP_REQUEST_ATTR (value 2):
+ *   - Uses fields: fd, vaddr, size
+ *   - Handle-based MEM_UNMAP operation
+ */
+struct qda_mem_unmap {
+	__u32 request;
+	__s32 fd;
+	__u64 vaddr;
+	__u64 vaddrout;
+	__u64 size;
+};
+
 #if defined(__cplusplus)
 }
 #endif

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

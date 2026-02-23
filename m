Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGGWKJUT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:51:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCD64120C2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:51:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8BC644BE5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:51:31 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 1730A4047F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:11:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=PIS0rMcE;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=edS5YL3P;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NJ0uGB3732832
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:11:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/8fFZehduIFTGd4qCuwHVKAUzJ2Ctw4RrkqPCbZ/59E=; b=PIS0rMcEGxe9OCe/
	61zEZ5Yss1GD9dMG7fC9eNOvlee47iCkm7vyqfLTMhW03EILhyUfzHBT50Ez/Wdh
	rT+yy0E82JueK+JezRaao6MP6LQBqN9OSzydfaKSlFWTr67hnSgpJo95j41tLnUZ
	pdtsHAXIEDjqwNsdksr7UQ6eHb5RQXtfQs0Gvk491eE9dGnCr1aAVvQFb8QCQZwQ
	+ZP3jq4ki4hygXRZnh8xL1Yh50iNQrKTNDWyl9YXeg7MVMVP4JV3ESXtEtauivoe
	LX5yDiyaWcpNH2r+NarxMqF80yZtv+XEPZdN2c6s3Dk5yhHuwIkAx8BzPX4PBe36
	zxNDDw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn7t9mbh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:11:15 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ad44941ea2so28840535ad.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 11:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771873874; x=1772478674; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/8fFZehduIFTGd4qCuwHVKAUzJ2Ctw4RrkqPCbZ/59E=;
        b=edS5YL3P3mEAGU9dbkn/zpw76mO05KJxAEPoKIS50Wo9Ta/OhU7rgYJlvsPqXlqk/1
         K1163oQI20TaVB7LMbeJzrCINbKgZWgojhrv+hjSHPOAEOdw3C8kTl7oj+JJFo2Sj5Rs
         5KCLQMAix50p96bfm6qrrXWcrn+ihPm9hzrW1jYQKPzGvt+639H+yhWsOjBWLQhlSnxh
         qqs1rLMlimby+6/IrbrLgnLuv6tNaNXjE4yk6KCKRRKdDH6HJfBK85pJowQWd5jP4cTb
         IuYmpjEzZP3yb6rHwgmPEOQK/r7fTbBJwCArWaKuxJntaG3JJNA5KyY/1grV/kuisEQf
         +h4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771873874; x=1772478674;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/8fFZehduIFTGd4qCuwHVKAUzJ2Ctw4RrkqPCbZ/59E=;
        b=ShIKc9kst67ui4OLWLTs4PifSg6eADKhI9ivIPmez+U+lmVquPp1UMuGhQCwDNZrqH
         dzfbcxM2MPorWXStiVK1luNLGCy+DAWsMbQhf4udJbhk4CyiI+5bTWqo90TG6dzqAay3
         IdreNwaJ7FqNtR+nPo0MGYZp1BFKguzTaGmilZoYfHeIVX3+1VpRqlHf40KSUiCVqN8x
         RpVaBkl7eP2orI6lRT4+hBS9DQmnAsEICDGAM1h6uX3sDsOyRcv3hiJ7gYOpAVAA5qdY
         MpKZeOx+t1W7S0rL74sOBvZYfZt8VPK5sDu7k7D3j2IvyNvzLK+aeb/ru82Q4RZqFlrX
         l9ZA==
X-Forwarded-Encrypted: i=1; AJvYcCUbSECw2hWViOa2QkkR005i0hbz+QxN5gYyEfCxmmhFWOIQD9JOb+bP9JXUO5NokJYPHHkfjfbHE7OQEYiE@lists.linaro.org
X-Gm-Message-State: AOJu0YwfZmJFS2VNoYpjQdv2+Z1x60T9f2LaQDuv5vbQ0kQf6Yg0k2TG
	KiHeM34Egwj38zUS+wEuWavIWJc60+79PALyDttUvpHo5gpzjwFRvt78YitO7MITtaVtrHCOBas
	5ZCLjxJXfdvZHkpuNXfti/A9loib9ANPTWj3eX6OjzTTh3GVZC3p1CcYG8GzRKKeSAiIjTA==
X-Gm-Gg: ATEYQzw5CVWNJmKMczuPg4MGvJZlzvSxXAGrcYMJi4tt76/FKINMOwThxSVg8dHYBeM
	KQVXPdGmw6NtLq0eRQdf63IsDiBEq7268W5h/KZ0Sr3J//JUJzSe9D/0pQRgOxeJctqvmtna4r+
	BCGyLTlJpV5x7yw+I90LdYHdX9RpsSkjO4Felvd5q2H1q9BFUgPO7uLtpy2JhAbTf51zVFdClYn
	wpK8ULdSez+IIVguIMeriND7VBJFMXnWxZr0f6pQrYF2qzYq2nmJiDgc9IPdwQ4sfJ5ucRJgs1e
	+Gbe93eJe/42mJMiEnHBCo6fJJwvAZZ58d4weNU8jhjPlkS5GlNZwYH7buxd/rpZNruHM4ZAUet
	gI5SF+CGGMPxvoNDc7mVFrL4MsdPKXGz6kO9bo4BbohPlFnzv/bffsg==
X-Received: by 2002:a17:903:2a8f:b0:2aa:d630:cd5d with SMTP id d9443c01a7336-2ad74549302mr83071365ad.44.1771873873873;
        Mon, 23 Feb 2026 11:11:13 -0800 (PST)
X-Received: by 2002:a17:903:2a8f:b0:2aa:d630:cd5d with SMTP id d9443c01a7336-2ad74549302mr83070975ad.44.1771873873320;
        Mon, 23 Feb 2026 11:11:13 -0800 (PST)
Received: from hu-ekangupt-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74e34e18sm83501505ad.10.2026.02.23.11.11.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:11:12 -0800 (PST)
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 00:39:09 +0530
MIME-Version: 1.0
Message-Id: <20260224-qda-firstpost-v1-15-fe46a9c1a046@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771873753; l=13841;
 i=ekansh.gupta@oss.qualcomm.com; s=20260223; h=from:subject:message-id;
 bh=rXImOerPPCRcLM/PrX4s5yCQxV6omJBtcCXYYEPRUAw=;
 b=K7TZp9Cqi+95pJ85mje+lWbGWCgDb+g/W1Zyj12HTTRexDM7MxAocuPC2VOxk30Og47ocX6mS
 FtJZjOrluUrDFYpfSmz3UrDnIo7y4y9US8jertx7oWmO6X5WLOb1d5E
X-Developer-Key: i=ekansh.gupta@oss.qualcomm.com; a=ed25519;
 pk=n0SepARizye+pYjhjg1RA5J+Nq4+IJbyRcBybU+/ERQ=
X-Authority-Analysis: v=2.4 cv=c5OmgB9l c=1 sm=1 tr=0 ts=699ca653 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=AEM1BfxD9CAojFsgHjQA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: YBhj6ta98XZ9muwD-uK2t1QWQTMpmrxs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2NiBTYWx0ZWRfXzUHNkW8Fm2XC
 ef+hnaFXa7PCEdHuvnN2RhxYm54dMSYUhF1ic+ukuZv+nZ5Dy3H8RoabjSkw5MC4mcyoDjVf+JW
 HqgyZyavsLbJybmu1fivRRzxAEr1BCUPh4WWBPrGOZ9YrL9Je6ecFVCUsXydI4IDoE/H4SaKwxY
 /efe25pkh5edlbRFyoXTjkQRju07xGi2gEalFbl3tJmwINZ/8R5LybJhX2UQ7KdWJEfqmJdgs9L
 uCJuXV2fWyyM6F0iFnTMf8xE4KpHlyXRDH9ECVzJE37k8e93QlbYl1Tbg4nI5LUcb7jODfmqxnS
 D+BJGYq1Hmjje4Gc/fQGTiJNsTO6HBOKrjyotNd9urPkMCqyZJ8VDdZy/4iD4EmP4l8DbkyuG8s
 I+sPir6jk3YnwPoEGQ1gBgBStpfvKH0ZbE2resQ1SIf/p+TPiKBOVQwU+XTiQA2UscUfqZg1qT7
 OFRqI0fDmgJexJdnVAA==
X-Proofpoint-ORIG-GUID: YBhj6ta98XZ9muwD-uK2t1QWQTMpmrxs
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
Message-ID-Hash: S2CK7I5MK7P3WIOSBSWM3UUHNHZYXMI4
X-Message-ID-Hash: S2CK7I5MK7P3WIOSBSWM3UUHNHZYXMI4
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:46 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 15/18] accel/qda: Add FastRPC DSP process creation support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S2CK7I5MK7P3WIOSBSWM3UUHNHZYXMI4/>
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
X-Rspamd-Queue-Id: 3BCD64120C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for creating a DSP process through the QDA FastRPC
interface. A new DRM_QDA_INIT_CREATE ioctl accepts a qda_init_create
structure describing the executable image, process attributes and
optional signature. The driver allocates a GEM-backed initialization
buffer, prepares a fastrpc_create_process_inbuf and a single
fastrpc_phy_page entry pointing to the initialization memory and
packages these into a set of FastRPC arguments.

The FastRPC core gains FASTRPC_RMID_INIT_CREATE and
FASTRPC_RMID_INIT_CREATE_ATTR method identifiers along with a
fastrpc_prepare_args_init_create() helper that reads the
qda_init_create parameters from user space, validates the ELF length,
optionally verifies a GEM handle for the image and fills a
FASTRPC_CREATE_PROCESS_NARGS-sized fastrpc_invoke_args array. The
scalars value is built from the FastRPC method id and buffer counts
so that the existing overlap and packing logic can treat process
creation like any other call.

On the IOCTL side qda_ioctl_create() forwards requests to
fastrpc_invoke() with the INIT_CREATE method id, ensuring that the
message buffer, per-process initialization memory and RPMsg
transport are reused for process creation in the same way as attach,
release and dynamic invocation. This patch lays the groundwork for
loading and running DSP user PDs under the QDA driver.

Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
---
 drivers/accel/qda/qda_drv.c     |   1 +
 drivers/accel/qda/qda_drv.h     |   2 +
 drivers/accel/qda/qda_fastrpc.c | 109 ++++++++++++++++++++++++++++++++++++++++
 drivers/accel/qda/qda_fastrpc.h |  31 ++++++++++++
 drivers/accel/qda/qda_ioctl.c   |  28 ++++++++++-
 drivers/accel/qda/qda_ioctl.h   |  13 +++++
 include/uapi/drm/qda_accel.h    |  29 ++++++++++-
 7 files changed, 211 insertions(+), 2 deletions(-)

diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
index f94f780ea50a..2b080d5d51c5 100644
--- a/drivers/accel/qda/qda_drv.c
+++ b/drivers/accel/qda/qda_drv.c
@@ -162,6 +162,7 @@ static const struct drm_ioctl_desc qda_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(QDA_GEM_CREATE, qda_ioctl_gem_create, 0),
 	DRM_IOCTL_DEF_DRV(QDA_GEM_MMAP_OFFSET, qda_ioctl_gem_mmap_offset, 0),
 	DRM_IOCTL_DEF_DRV(QDA_INIT_ATTACH, qda_ioctl_attach, 0),
+	DRM_IOCTL_DEF_DRV(QDA_INIT_CREATE, qda_ioctl_create, 0),
 	DRM_IOCTL_DEF_DRV(QDA_INVOKE, qda_ioctl_invoke, 0),
 };
 
diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
index bb1d1e82036a..950e8d44995d 100644
--- a/drivers/accel/qda/qda_drv.h
+++ b/drivers/accel/qda/qda_drv.h
@@ -48,6 +48,8 @@ struct qda_user {
 	u32 client_id;
 	/* Back-pointer to device structure */
 	struct qda_dev *qda_dev;
+	/* GEM object for PD initialization memory */
+	struct qda_gem_obj *init_mem_gem_obj;
 };
 
 /**
diff --git a/drivers/accel/qda/qda_fastrpc.c b/drivers/accel/qda/qda_fastrpc.c
index a48b255ffb1b..f03dcf7e21e4 100644
--- a/drivers/accel/qda/qda_fastrpc.c
+++ b/drivers/accel/qda/qda_fastrpc.c
@@ -487,6 +487,36 @@ int fastrpc_internal_invoke_unpack(struct fastrpc_invoke_context *ctx,
 	return err;
 }
 
+static void setup_create_process_args(struct fastrpc_invoke_args *args,
+				      struct fastrpc_create_process_inbuf *inbuf,
+				      struct qda_init_create *init,
+				      struct fastrpc_phy_page *pages)
+{
+	args[0].ptr = (u64)(uintptr_t)inbuf;
+	args[0].length = sizeof(*inbuf);
+	args[0].fd = -1;
+
+	args[1].ptr = (u64)(uintptr_t)current->comm;
+	args[1].length = inbuf->namelen;
+	args[1].fd = -1;
+
+	args[2].ptr = (u64)init->file;
+	args[2].length = inbuf->filelen;
+	args[2].fd = init->filefd;
+
+	args[3].ptr = (u64)(uintptr_t)pages;
+	args[3].length = 1 * sizeof(*pages);
+	args[3].fd = -1;
+
+	args[4].ptr = (u64)(uintptr_t)&inbuf->attrs;
+	args[4].length = sizeof(inbuf->attrs);
+	args[4].fd = -1;
+
+	args[5].ptr = (u64)(uintptr_t)&inbuf->siglen;
+	args[5].length = sizeof(inbuf->siglen);
+	args[5].fd = -1;
+}
+
 static int fastrpc_prepare_args_init_attach(struct fastrpc_invoke_context *ctx)
 {
 	struct fastrpc_invoke_args *args;
@@ -554,6 +584,80 @@ static int fastrpc_prepare_args_invoke(struct fastrpc_invoke_context *ctx, char
 	return 0;
 }
 
+static int fastrpc_prepare_args_init_create(struct fastrpc_invoke_context *ctx, char __user *argp)
+{
+	struct qda_init_create init;
+	struct fastrpc_invoke_args *args;
+	struct fastrpc_create_process_inbuf *inbuf;
+	int err;
+	u32 sc;
+	struct drm_gem_object *file_gem_obj = NULL;
+
+	args = kcalloc(FASTRPC_CREATE_PROCESS_NARGS, sizeof(*args), GFP_KERNEL);
+	if (!args)
+		return -ENOMEM;
+
+	ctx->input_pages = kcalloc(1, sizeof(*ctx->input_pages), GFP_KERNEL);
+	if (!ctx->input_pages) {
+		err = -ENOMEM;
+		goto err_free_args;
+	}
+
+	ctx->inbuf =  kcalloc(1, sizeof(*inbuf), GFP_KERNEL);
+	if (!ctx->inbuf) {
+		err = -ENOMEM;
+		goto err_free_input_pages;
+	}
+	inbuf = ctx->inbuf;
+
+	err = copy_from_user_or_kernel(&init, argp, sizeof(init));
+	if (err)
+		goto err_free_inbuf;
+
+	if (init.filelen > INIT_FILELEN_MAX) {
+		err = -EINVAL;
+		goto err_free_inbuf;
+	}
+	inbuf->client_id = ctx->client_id;
+	inbuf->namelen = strlen(current->comm) + 1;
+	inbuf->filelen = init.filelen;
+	inbuf->pageslen = 1;
+	inbuf->attrs = init.attrs;
+	inbuf->siglen = init.siglen;
+
+	setup_pages_from_gem_obj(ctx->init_mem_gem_obj, &ctx->input_pages[0]);
+
+	if (init.filelen && init.filefd) {
+		err = get_gem_obj_from_handle(ctx->file_priv, init.filefd, &file_gem_obj);
+		if (err) {
+			err = -EINVAL;
+			goto err_free_inbuf;
+		}
+		drm_gem_object_put(file_gem_obj);
+	}
+
+	setup_create_process_args(args, inbuf, &init, ctx->input_pages);
+
+	sc = FASTRPC_SCALARS(FASTRPC_RMID_INIT_CREATE, 4, 0);
+	if (init.attrs)
+		sc = FASTRPC_SCALARS(FASTRPC_RMID_INIT_CREATE_ATTR, 4, 0);
+	ctx->sc = sc;
+	ctx->args = args;
+	ctx->handle = FASTRPC_INIT_HANDLE;
+
+	return 0;
+
+err_free_inbuf:
+	kfree(ctx->inbuf);
+	ctx->inbuf = NULL;
+err_free_input_pages:
+	kfree(ctx->input_pages);
+	ctx->input_pages = NULL;
+err_free_args:
+	kfree(args);
+	return err;
+}
+
 int fastrpc_prepare_args(struct fastrpc_invoke_context *ctx, char __user *argp)
 {
 	int err;
@@ -569,6 +673,11 @@ int fastrpc_prepare_args(struct fastrpc_invoke_context *ctx, char __user *argp)
 	case FASTRPC_RMID_INVOKE_DYNAMIC:
 		err = fastrpc_prepare_args_invoke(ctx, argp);
 		break;
+	case FASTRPC_RMID_INIT_CREATE:
+	case FASTRPC_RMID_INIT_CREATE_ATTR:
+		ctx->pd = USER_PD;
+		err = fastrpc_prepare_args_init_create(ctx, argp);
+		break;
 	default:
 		return -EINVAL;
 	}
diff --git a/drivers/accel/qda/qda_fastrpc.h b/drivers/accel/qda/qda_fastrpc.h
index bcadf9437a36..a8deb7efec86 100644
--- a/drivers/accel/qda/qda_fastrpc.h
+++ b/drivers/accel/qda/qda_fastrpc.h
@@ -122,6 +122,27 @@ struct fastrpc_invoke_buf {
 	u32 pgidx;
 };
 
+/**
+ * struct fastrpc_create_process_inbuf - Input buffer for process creation
+ *
+ * This structure defines the input buffer format for creating a new
+ * process on the remote DSP.
+ */
+struct fastrpc_create_process_inbuf {
+	/* Client identifier for the session */
+	int client_id;
+	/* Length of the process name string */
+	u32 namelen;
+	/* Length of the shell file */
+	u32 filelen;
+	/* Length of the pages list */
+	u32 pageslen;
+	/* Process attributes flags */
+	u32 attrs;
+	/* Length of the signature data */
+	u32 siglen;
+};
+
 /**
  * struct qda_msg - Message structure for FastRPC communication
  *
@@ -226,6 +247,8 @@ struct fastrpc_invoke_context {
 	struct qda_gem_obj *msg_gem_obj;
 	/* DRM file private data */
 	struct drm_file *file_priv;
+	/* GEM object for PD initialization memory */
+	struct qda_gem_obj *init_mem_gem_obj;
 	/* Pointer to request buffer */
 	void *req;
 	/* Pointer to response buffer */
@@ -237,6 +260,8 @@ struct fastrpc_invoke_context {
 /* Remote Method ID table - identifies initialization and control operations */
 #define FASTRPC_RMID_INIT_ATTACH	0	/* Attach to DSP session */
 #define FASTRPC_RMID_INIT_RELEASE	1	/* Release DSP session */
+#define FASTRPC_RMID_INIT_CREATE	6	/* Create DSP process */
+#define FASTRPC_RMID_INIT_CREATE_ATTR	7	/* Create DSP process with attributes */
 #define FASTRPC_RMID_INVOKE_DYNAMIC	0xFFFFFFFF	/* Dynamic method invocation */
 
 /* Common handle for initialization operations */
@@ -244,6 +269,12 @@ struct fastrpc_invoke_context {
 
 /* Protection Domain(PD) ids */
 #define ROOT_PD		(0)
+#define USER_PD		(1)
+
+/* Number of arguments for process creation */
+#define FASTRPC_CREATE_PROCESS_NARGS	6
+/* Maximum initialization file size (4MB) */
+#define INIT_FILELEN_MAX		(4 * 1024 * 1024)
 
 /**
  * fastrpc_context_free - Free an invocation context
diff --git a/drivers/accel/qda/qda_ioctl.c b/drivers/accel/qda/qda_ioctl.c
index e90aceabd30d..477112ad6664 100644
--- a/drivers/accel/qda/qda_ioctl.c
+++ b/drivers/accel/qda/qda_ioctl.c
@@ -122,7 +122,7 @@ static int fastrpc_invoke(int type, struct drm_device *dev, void *data,
 	struct fastrpc_invoke_context *ctx;
 	struct drm_gem_object *gem_obj;
 	int err;
-	size_t hdr_size;
+	size_t hdr_size, initmem_size = 4 * 1024 * 1024;
 
 	err = qda_validate_and_get_context(dev, file_priv, &qdev, &qda_user);
 	if (err)
@@ -142,6 +142,22 @@ static int fastrpc_invoke(int type, struct drm_device *dev, void *data,
 	ctx->file_priv = file_priv;
 	ctx->client_id = qda_user->client_id;
 
+	if (type == FASTRPC_RMID_INIT_CREATE) {
+		struct drm_gem_object *gem_obj;
+
+		gem_obj = qda_gem_create_object(qdev->drm_dev, qdev->drm_priv->iommu_mgr,
+						initmem_size, file_priv);
+		if (IS_ERR(gem_obj)) {
+			err = PTR_ERR(gem_obj);
+			goto err_context_free;
+		}
+
+		ctx->init_mem_gem_obj = to_qda_gem_obj(gem_obj);
+		qda_user->init_mem_gem_obj = ctx->init_mem_gem_obj;
+	} else if (type == FASTRPC_RMID_INIT_RELEASE) {
+		ctx->init_mem_gem_obj = qda_user->init_mem_gem_obj;
+	}
+
 	err = fastrpc_prepare_args(ctx, (char __user *)data);
 	if (err)
 		goto err_context_free;
@@ -177,6 +193,11 @@ static int fastrpc_invoke(int type, struct drm_device *dev, void *data,
 		goto err_context_free;
 
 err_context_free:
+	if (type == FASTRPC_RMID_INIT_RELEASE && qda_user->init_mem_gem_obj) {
+		drm_gem_object_put(&qda_user->init_mem_gem_obj->base);
+		qda_user->init_mem_gem_obj = NULL;
+	}
+
 	fastrpc_context_put_id(ctx, qdev);
 	kref_put(&ctx->refcount, fastrpc_context_free);
 
@@ -197,3 +218,8 @@ int qda_ioctl_invoke(struct drm_device *dev, void *data, struct drm_file *file_p
 {
 	return fastrpc_invoke(FASTRPC_RMID_INVOKE_DYNAMIC, dev, data, file_priv);
 }
+
+int qda_ioctl_create(struct drm_device *dev, void *data, struct drm_file *file_priv)
+{
+	return fastrpc_invoke(FASTRPC_RMID_INIT_CREATE, dev, data, file_priv);
+}
diff --git a/drivers/accel/qda/qda_ioctl.h b/drivers/accel/qda/qda_ioctl.h
index e186c5183171..181ed50b19dc 100644
--- a/drivers/accel/qda/qda_ioctl.h
+++ b/drivers/accel/qda/qda_ioctl.h
@@ -76,4 +76,17 @@ int fastrpc_release_current_dsp_process(struct qda_dev *qdev, struct drm_file *f
  */
 int qda_ioctl_invoke(struct drm_device *dev, void *data, struct drm_file *file_priv);
 
+/**
+ * qda_ioctl_create - Create a DSP process
+ * @dev: DRM device structure
+ * @data: User-space data containing process creation parameters
+ * @file_priv: DRM file private data
+ *
+ * This IOCTL handler creates a new process on the DSP, loading the
+ * specified executable and initializing its runtime environment.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int qda_ioctl_create(struct drm_device *dev, void *data, struct drm_file *file_priv);
+
 #endif /* _QDA_IOCTL_H */
diff --git a/include/uapi/drm/qda_accel.h b/include/uapi/drm/qda_accel.h
index 01072a9d0a91..2b7f500db52c 100644
--- a/include/uapi/drm/qda_accel.h
+++ b/include/uapi/drm/qda_accel.h
@@ -22,7 +22,8 @@ extern "C" {
 #define DRM_QDA_GEM_CREATE		0x01
 #define DRM_QDA_GEM_MMAP_OFFSET	0x02
 #define DRM_QDA_INIT_ATTACH		0x03
-/* Indexes 0x04 to 0x06 are reserved for other requests */
+#define DRM_QDA_INIT_CREATE		0x04
+/* Indexes 0x05-0x06 are reserved for other requests */
 #define DRM_QDA_INVOKE			0x07
 
 /*
@@ -38,6 +39,8 @@ extern "C" {
 #define DRM_IOCTL_QDA_GEM_MMAP_OFFSET	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_GEM_MMAP_OFFSET, \
 						 struct drm_qda_gem_mmap_offset)
 #define DRM_IOCTL_QDA_INIT_ATTACH	DRM_IO(DRM_COMMAND_BASE + DRM_QDA_INIT_ATTACH)
+#define DRM_IOCTL_QDA_INIT_CREATE	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_INIT_CREATE, \
+						 struct qda_init_create)
 #define DRM_IOCTL_QDA_INVOKE		DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_INVOKE, \
 						 struct qda_invoke_args)
 
@@ -116,6 +119,30 @@ struct qda_invoke_args {
 	__u64 args;
 };
 
+/**
+ * struct qda_init_create - Accelerator process initialization parameters
+ * @filelen: Length of the ELF file in bytes
+ * @filefd: File descriptor containing the ELF file
+ * @attrs: Process attributes flags
+ * @siglen: Length of signature data in bytes
+ * @file: Pointer to ELF file data if not using filefd
+ *
+ * This structure is used with DRM_IOCTL_QDA_INIT_CREATE to initialize
+ * a new process on the accelerator. The process code is provided either
+ * via a file descriptor (filefd, typically a GEM object) or a direct
+ * pointer (file). Set file to 0 if using filefd.
+ *
+ * The attrs field contains bit flags for debug mode, privileged execution,
+ * and other process attributes.
+ */
+struct qda_init_create {
+	__u32 filelen;
+	__s32 filefd;
+	__u32 attrs;
+	__u32 siglen;
+	__u64 file;
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

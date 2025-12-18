Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMpOEOoJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:10:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E408D411634
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:10:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B13D40960
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:10:17 +0000 (UTC)
Received: from mx08-00376f01.pphosted.com (mx08-00376f01.pphosted.com [91.207.212.86])
	by lists.linaro.org (Postfix) with ESMTPS id 867F93F80E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 15:43:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=imgtec.com header.s=dk201812 header.b=Y3L0rlzt;
	spf=pass (lists.linaro.org: domain of Matt.Coster@imgtec.com designates 91.207.212.86 as permitted sender) smtp.mailfrom=Matt.Coster@imgtec.com;
	dmarc=pass (policy=none) header.from=imgtec.com
Received: from pps.filterd (m0168888.ppops.net [127.0.0.1])
	by mx08-00376f01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BIDRHdk604961;
	Thu, 18 Dec 2025 15:42:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=dk201812; bh=f
	xCDg/MKHnjAnmYHw2JuWOHe9hJSFo/91W4J8j6Nhcs=; b=Y3L0rlztNAgUOlKOd
	+amJthsyZawmEjzH/Meg6IeW3A5yS4Dm/ZGrY4W753p9yU9qVMrVE6/yVKJus3AT
	WFZN/e1e6w7/LJ7IEvWqt43l9f6k4o7T8MNtjsto9B3jxAL6DMrr45mEYayqGXcv
	hNKfkMfD7WZs4/xo2i5YjV3L27VXciTIhQSpANrJfrTwO8yCBb0PDx90/h3CBacL
	BeauHW6UNkS3CCk0vjv5A8to0YbPAOLj+sDcu6LUTL0AUEfEsRqybUCM1ojZcuET
	fRRZmE4nRiBCMnkNPJBAIZIPFVbXnmIgVsn0gctukEr2ZxsgySklHdzXpm9w7+U7
	L++dg==
Received: from hhmail01.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx08-00376f01.pphosted.com (PPS) with ESMTPS id 4b41p0rjhe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Dec 2025 15:42:40 +0000 (GMT)
Received: from
 1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa
 (172.25.8.252) by HHMAIL01.hh.imgtec.org (10.100.10.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 15:42:38 +0000
From: Matt Coster <matt.coster@imgtec.com>
To: Frank Binns <frank.binns@imgtec.com>,
        Alexandru Dadu
	<alexandru.dadu@imgtec.com>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Alessio Belle
	<alessio.belle@imgtec.com>
In-Reply-To: <20251208-no-export-pm-fw-obj-v1-1-83ab12c61693@imgtec.com>
References: <20251208-no-export-pm-fw-obj-v1-1-83ab12c61693@imgtec.com>
Message-ID: <176607255864.59162.15026790132663645315.b4-ty@imgtec.com>
Date: Thu, 18 Dec 2025 15:42:38 +0000
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Originating-IP: [172.25.8.252]
X-Authority-Analysis: v=2.4 cv=WsMm8Nfv c=1 sm=1 tr=0 ts=694420f0 cx=c_pps
 a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17
 a=kOokcG3ghCoA:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=VkNPw1HP01LnGYTKEx00:22 a=r_1tXGB3AAAA:8 a=4YpX2-rxloMmsslGTpUA:9
 a=QEXdDO2ut3YA:10 a=t8nPyN_e6usw4ciXM-Pk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDEzMSBTYWx0ZWRfX7rJT4wRN7sZs
 UzGMBm/xp681y6F2icWlA/yTOYzI/djnHvF2O28qYeGZsLufFWhJRfbin7MPT2qwxdMkzmAuhhm
 VMPmYehdAXQbwARkyOsfEl0XROwe85dWNl6JN+p/umoohPMnnRaEXoiSjlm8UN4lLwYBEiUiEPd
 CWQJMQinlSm4+TQ8MdWlYHA+9EIMz3HrQZed7KzTESdv954Ym/dBuFtrmZLe+9xeuMDru4uSIpV
 tsD3fhaVcxnaF5/thTT8AaaYSssKV325gePppwgdh5Iu+d3huIwHdKNxbEUcArVvN1hjQuCjOKW
 KXdm7V9rmSTv4BAeOe2Uqdty+nB0CeBENDnCMSnrFxysgfashppWg7hS1LX1SovSGjQBMBuLjW0
 IsptEsWnpbdnEratwrZAvbyVMWn0CiruElBMowXOpFsRaJx+Fl1o0iJ48M3yCCXeFWkvutnqLwA
 2yQYA0J1XlwZ7QEvxzw==
X-Proofpoint-ORIG-GUID: xf0Erm76vroEA5vdl8oXfefc7ihb7DmX
X-Proofpoint-GUID: xf0Erm76vroEA5vdl8oXfefc7ihb7DmX
X-Spamd-Bar: --
X-MailFrom: Matt.Coster@imgtec.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5HQOFBTNCFVTIO3525JM6PP5FKXIP4DX
X-Message-ID-Hash: 5HQOFBTNCFVTIO3525JM6PP5FKXIP4DX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:54 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/imagination: Disallow exporting of PM/FW protected objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5HQOFBTNCFVTIO3525JM6PP5FKXIP4DX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[2856];
	R_DKIM_REJECT(1.00)[imgtec.com:s=dk201812];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[imgtec.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[imgtec.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[matt.coster@imgtec.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[imgtec.com:-];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.888];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,imgtec.com:mid,imgtec.com:email]
X-Rspamd-Queue-Id: E408D411634
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 08 Dec 2025 09:11:00 +0000, Alessio Belle wrote:
> These objects are meant to be used by the GPU firmware or by the PM unit
> within the GPU, in which case they may contain physical addresses.
> 
> This adds a layer of protection against exposing potentially exploitable
> information outside of the driver.
> 
> 
> [...]

Applied, thanks!

[1/1] drm/imagination: Disallow exporting of PM/FW protected objects
      commit: 6b991ad8dc3abfe5720fc2e9ee96be63ae43e362

Best regards,
-- 
Matt Coster <matt.coster@imgtec.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

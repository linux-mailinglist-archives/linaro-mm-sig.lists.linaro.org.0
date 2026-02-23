Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMQHN68T4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:51:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0F94120D9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:51:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 98A9044D49
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:51:58 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 7AE324047F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:11:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="pqFA/fbd";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=O9B8JuD+;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NAYjNF322365
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:11:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yRUzuJcFHmAaqmAyK9hpXfuGmZiOZ8PtVGzanUhu6Dk=; b=pqFA/fbd40J7GH0t
	61FyLOwfDSBvbMB0H48uB5tQBf1nMdwKyi7biOEudmKNLtZaCsHYrrY/RnXrULD4
	w4yAWFNMhi50p0mUeEzxYnRpAxzUsKqBh/pCA3yKoiiWVnVijCCw2Lr6ocNjAwS/
	yo/iHekskfL7+jZGq0dYD6AMhCUsw+aYBjxRqJigwofNqsASS6DqjbDCKDNjGeva
	ZhR57O96hFB0Ppr3UBZXQqFPhusEZciHCQ7Q0HMY+qI2KySKOkAPwz4wCWfSFwRv
	gVh0g8+HS7qHnwJT/iBLrycvZyJHCNIIhltkojxsTRyuAREntcMXPozM3Ft9BD7K
	1QpTdg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8y1map-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:11:36 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aad6045810so47861365ad.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 11:11:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771873896; x=1772478696; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yRUzuJcFHmAaqmAyK9hpXfuGmZiOZ8PtVGzanUhu6Dk=;
        b=O9B8JuD+J30OFa7KR1V5ig3h6Svog8J4wzO4TDrT5fVZxxocCh1sz6jcGARBk0WMfH
         0XzeWf4BD8scl7kBSLNU/EEu3ayWoF4lFhWlM2m0Tgj/X/sP+BneKoybqf2WjKKRfIyB
         86/Lcu7F9Lt/jEW+k9K2oQxAzzbpSoyFCaq/9uuzQyTMmHQqDTrkpEZRFuNn22O9raUY
         yNmCPUWAEizw1ZM8JnIHd3zR3faFXiGM9A4qZ64GclRM+oXk6Zd8tV2LXJ2lhLbSm7J7
         XaJcd9YtMQKZv2vSqhv30g7Gm/KdF0YqXIfsUDZ3BCNtMh3SOnPOnWIlie05O+eKZy5X
         MBYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771873896; x=1772478696;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yRUzuJcFHmAaqmAyK9hpXfuGmZiOZ8PtVGzanUhu6Dk=;
        b=fCQ90u46buKaW4ta2y2htN9ylyCVYm/GMYrL4NJBYt7oc6XtkMnYNffwEUlgCPAtub
         UuSHRmA+3nrF66pIGRcWFxlk6RJedNCG2+y11CHwaz+Bh4jOEvV5aA6iEsGnobit6UiP
         WvB8lDW4PcBak2aGvj0+CCvvTOdlNOorAUrM8g1h0028SizhNwQvRFqrM0fLIT/F5pWt
         tzkUL0CwLSo9yejcGcqGo23+xCiPdVd0NjluhZvsb7M/9+rHWa8SlqyR9HFtSO7CwQ4t
         Rle8kpxUp0blokJP2Bf7Am/BU0Bzx1VbWCbLI21LAdgAYYso2xSGrzfmEz4Je6AZd1hQ
         Ns7A==
X-Forwarded-Encrypted: i=1; AJvYcCW4MOmnhb0RsoFLLoM5Zi86W9OHj4CN6Uq7aYo3tK3uxbpeUR3v+9yuHrlIVGnkzfhoLgxwfTnzEpy2+Uyg@lists.linaro.org
X-Gm-Message-State: AOJu0Yzg8s1Wl4q2MLPh/KLQrCjN9HhjajbnzxLPzCv3zIAxz2SKxDrz
	KJLJQ81v9MWLyAPdQdTxnyRZEKF5Nj2YRVMOAJBWk1/iPFsQa/tnfRkPi0Zr9kauM0bykedI7t/
	Fh81iqtQ7ryy8yg64SmFdDeNYYwEB9Vk7YFbrOGf44y5Clupj9wakXWTefOsxVrVS4nogNA==
X-Gm-Gg: ATEYQzztkyIo0TLP/EksVcxs7+1hAWlzoaE1QQov8njQJSsctQPI+WLN/8vH1pCABhL
	UNNnKKoaG03fxJwb/gjVFekK9V+8GOedB77+yxcebCAtiQ9rFcx0jveRe6rGc2QcvCeuuc7njO8
	8PUgW8JdSQA7vMqi/oUDufH+u0UiPAwEjgSnyPgVM6HwRc7O+BoI4NRBf4vruMd75Dq3aHzSvIm
	rnOWUy6elPzCg8SrE2ovgBKjLAGqK2FmfTua2e8AmhOfwX8SuD37XO54pwqewjL6VMN2DoTEk7i
	V8MIMMtnilZpG4gPLoNuutocx9EwvD5XqFL8yKNMZTbqv+7HjJDjIaGCyzJ/tVWPn22oUc+SLjC
	AQNr9lr+p+YB3uv9QIC/Op1G4VyecX7o4KhDNahWYwfURdZGurgOTgA==
X-Received: by 2002:a17:902:db02:b0:2a5:8c1c:744f with SMTP id d9443c01a7336-2ad74525046mr99741355ad.40.1771873895868;
        Mon, 23 Feb 2026 11:11:35 -0800 (PST)
X-Received: by 2002:a17:902:db02:b0:2a5:8c1c:744f with SMTP id d9443c01a7336-2ad74525046mr99740985ad.40.1771873895387;
        Mon, 23 Feb 2026 11:11:35 -0800 (PST)
Received: from hu-ekangupt-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74e34e18sm83501505ad.10.2026.02.23.11.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:11:34 -0800 (PST)
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 00:39:12 +0530
MIME-Version: 1.0
Message-Id: <20260224-qda-firstpost-v1-18-fe46a9c1a046@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771873753; l=1237;
 i=ekansh.gupta@oss.qualcomm.com; s=20260223; h=from:subject:message-id;
 bh=Lyy5sl15dqp/AXuBfl18EdJ2b3DY11ZJbm74AYUuJlc=;
 b=U2RuZmqfnOzXIV4uEy/q/+tEABjRAyjmepjpnCpXNvRPVQEY3N8FyXUwnOR4IQspDW9EJCN6r
 /BSlCMecuL/A6nXKoi/ZCcCSKbs/ob1ERp+7UwIQROKZVvMOxgaov2G
X-Developer-Key: i=ekansh.gupta@oss.qualcomm.com; a=ed25519;
 pk=n0SepARizye+pYjhjg1RA5J+Nq4+IJbyRcBybU+/ERQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2NiBTYWx0ZWRfX9Wv71+5InDiv
 e6Fp5Pa+rqzOT93zECUCoPsLBMij0d8VB89ER0++pSA7BI6X1/96T0OAHf4beYkMLmOnkNQ+fz/
 AqnhxhJwfct5JorP7btcaJRo1fIhrzYNRlG+OZfRA6uTZn0lt06p17616o0rGrqn6N8u6SEx8Bk
 fwE8ZgekUv360iTVvBHQ7m+GtVG9jxgJCaTM6s2x0KdJKkrv3CTAlF8VxXIWktZ8IJRNIWfW0Vq
 TMDNZolYOE3vyzpzUo6zcSe9duE9CynH8DfZfSRTd6KPVe1xy7cgSN14DcBWYtZ+L5DZ0YkFXjb
 BLix4rwqXWrjhfRKw8SltwfqEYAxpMTD1TySwSIrH/fq89+/AHFeDI6yMJ88SNjcU9M0NooI8/O
 7LahG3OXlRN4rQ4D8S8djsRdbgV/721ey9QX1LZ7HceAeFF9XdD8nOwV/6yc2RtWY5ZpT+WIeRT
 I0zSaOPwS4Odp9wfmwA==
X-Authority-Analysis: v=2.4 cv=edYwvrEH c=1 sm=1 tr=0 ts=699ca668 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=e5mUnYsNAAAA:8 a=DP9mDQDU2fd_VHYdcv8A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: p4l0An3mBtmV9pGczLC_U2Ag9717b8BB
X-Proofpoint-ORIG-GUID: p4l0An3mBtmV9pGczLC_U2Ag9717b8BB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230166
X-Spamd-Bar: ---
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: T5JGRMVQTCC5CBX3CBMA6E4ERQ5YP7ML
X-Message-ID-Hash: T5JGRMVQTCC5CBX3CBMA6E4ERQ5YP7ML
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:48 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 18/18] MAINTAINERS: Add MAINTAINERS entry for QDA driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T5JGRMVQTCC5CBX3CBMA6E4ERQ5YP7ML/>
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
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.freedesktop.org:email,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,oss.qualcomm.com:mid]
X-Rspamd-Queue-Id: 7E0F94120D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a new MAINTAINERS entry for the Qualcomm DSP Accelerator (QDA)
driver. The entry lists the primary maintainer, the linux-arm-msm and
dri-devel mailing lists, and covers all source files under
drivers/accel/qda, Documentation/accel/qda and the UAPI header
include/uapi/drm/qda_accel.h.

This ensures that patches to the QDA driver and its public API are
tracked and routed to the appropriate reviewers as the driver is
integrated into the DRM accel subsystem.

Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 71f76fddebbf..78b8b82a6370 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21691,6 +21691,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/crypto/qcom-qce.yaml
 F:	drivers/crypto/qce/
 
+QUALCOMM DSP ACCELERATOR (QDA) DRIVER
+M:	Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
+L:	linux-arm-msm@vger.kernel.org
+L:	dri-devel@lists.freedesktop.org
+S:	Supported
+F:	Documentation/accel/qda/
+F:	drivers/accel/qda/
+F:	include/uapi/drm/qda_accel.h
+
 QUALCOMM EMAC GIGABIT ETHERNET DRIVER
 M:	Timur Tabi <timur@kernel.org>
 L:	netdev@vger.kernel.org

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HUIgIhxJKWqFTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:23:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0419D668B79
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:23:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=EyyhwZTb;
	dkim=fail ("body hash did not verify") header.d=oss.qualcomm.com header.s=google header.b=TEAeMu7k;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1975840AAB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:23:07 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 1C1083F7BD
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 13:44:04 +0000 (UTC)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6539vRA52368043
	for <linaro-mm-sig@lists.linaro.org>; Wed, 3 Jun 2026 13:44:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kRbnU8V6Zsc+nav/FJky6GGhRnGxbQyRHCJCHQ8YEm0=; b=EyyhwZTbQfhFDZMd
	7/4fMwTCUpSRhTNsWsHAyx8UwJfcKZIMQ4/sbAEpnkbOlhoUJvKrU3m/nGKyn5mG
	rSnp6b+aFYgaLyXIQZsfy0p73XLEmKHqgQJVSe4CNf1IL2ZH2BZfT0VZdw8yAQ2u
	2qe4dGi/2pzYRIsbCkw8p8gWxLJAdlIz7PRyqJEzN0XIkosS0/k7uTzC1HrNn3ki
	vBV3JDExkb/BOU8kc6q1ZmOJ5OVpYxY1AwVdbUrQku1ZO2MkOmndJD73lqU/QRtM
	fxQuxERcwTum1w1uAJbJ2maUN57342AI6ICT5qZzpKAuV0frf2oeH8Hu15aw2X93
	IiT8vQ==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejj3ggtru-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 13:44:01 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-963d7e5ac48so3725622241.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 06:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780494239; x=1781099039; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kRbnU8V6Zsc+nav/FJky6GGhRnGxbQyRHCJCHQ8YEm0=;
        b=TEAeMu7kXnWEEyBTCwuCu7C6cEu1ZfNVjSkS6N0SBibe5GvgwHaAQwC47yIrmwLeU6
         7nh180hUWSfsONuYq8VavpMsEhpl01OluIKa547GHPlU0C0Y85Uonk+XDax0+TYrcAHq
         VJAvgDRoejfatajgWM1DKdRv9yAjmZ1ld/nBFxvlKR9s0WN6Fdq2O3f19rshoyjMZ0Qq
         ulc1y0XJGWapV3Sn9/6liN6AkfvhFnZRHQTGOL4yhx2iO196VuN80R1921xA4s35WvdU
         Vff4q9a9u6WnBTcjiCOdmV2dkzebB6vRDz7NTUIiSxA28kp8LBkQCva1KwPGmGMHHNI+
         6Jqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780494239; x=1781099039;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kRbnU8V6Zsc+nav/FJky6GGhRnGxbQyRHCJCHQ8YEm0=;
        b=KnY0UkEahXhdfCnS/pKbCCRjNLxjMH3zQLj5Mh4mQ8sdEJPxoeI5evlKaZiIROgCOF
         eCSttqYEuNIVLmyk6GXDLAXnYKd6zscZ3qChJDr722f55RJBcovEC1g2ok5uBrrcCNjs
         +JCWx4rxHnxVlYJAQBumlga5ayms7mwtMJG6xfvb/emCBZ/uFSxsX8iq46TnH+FRSvyO
         jA7mDYQHV4py2gCt6F8SIDQusj8yFtdDd9RVYasWkPUF7JiNwY0ezqElUTux0/PLTt4x
         NML+Me/c9g/kBoNIiGquFnUtX7AtdvOB6dClsjVYql8GjLnHIUqj+D+GVabE04Wqgcgg
         HKrQ==
X-Forwarded-Encrypted: i=1; AFNElJ98wT5JaEXmYuNLejVHmtq0eM4NfK2ZU0vzcBdZbv4Q3YcPM8v5JnGlVPhJdBpbUBCnCMsSEin8gUmz/AHp@lists.linaro.org
X-Gm-Message-State: AOJu0YxWSq8uib4Ld3S4n1Vw30bpMKEXJs0FIg6s22MwQjpySYf4YBZ5
	9DRxvwLCIBcr7poUuJonsHuV6UVglKZsx2ZbG4/j9hFM16U45GHuWYPu4FEjOIXrt4uVzw9pEcl
	BALuJAA5s+Y+j76ItqGbbuzFa367amvSafS36d2gRwYe9VLCo4yF8BuMvnFC/v45sxECYAw==
X-Gm-Gg: Acq92OEHB4mexspDy+Wu1AnDMJ5c7O8CIro2MfIdGbygzh4eTcSBQaqw2A0Ajj/othl
	+nbThj4dzSMJGbNWHWMOx/Z6zB7TraAxX/nI+fssHfktFD871MV6MLQRKneLlP5lvFZxM3mBS9Y
	/bQQCl1qeKRkuFzZLolA+2UykGf95acPpas3lTBnUp+6mNbvDTteed5kXXoSrRRiWs/5LV8QghB
	JOMlw5CpskjzAmfifc+UP79KQHuA/rNDH7Qt+uM0GsyAVFyqXVGoAaF1OyBX/7TevR1t0av/jdT
	Hy/Uu89EHypwUR6bYb6Vp1v46M25G4eWBB5OMbF5q31c312CIFnk0/nLt64w53TSR+FKHJYyzPo
	zk5qql/xNzWX7chz5F34zr7IyhD7G0RkCYUgSFD/FaOEd/DATICznDISuHlmXQMsvVVSQkQMrFE
	PtRCsPbtGttlLYr0Oa/RpfLyBgvQkT4AtCNTF4PnAm+BA3HQ==
X-Received: by 2002:a05:6102:dd0:b0:631:2973:5c2c with SMTP id ada2fe7eead31-6ec469592aamr1534027137.21.1780494239381;
        Wed, 03 Jun 2026 06:43:59 -0700 (PDT)
X-Received: by 2002:a05:6102:dd0:b0:631:2973:5c2c with SMTP id ada2fe7eead31-6ec469592aamr1533992137.21.1780494238918;
        Wed, 03 Jun 2026 06:43:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396ac2ed56fsm9210311fa.37.2026.06.03.06.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 06:43:58 -0700 (PDT)
Date: Wed, 3 Jun 2026 16:43:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <2ztwmdejpkp3f3naz3g2fkjkpd6iomlb34bqnpnp6bhzn27vbb@wnd3fjcz6tgx>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-8-b2d984c297f8@oss.qualcomm.com>
 <m4zo2nkxtl5yeyo7riuata6r5saflmdgqf37cz2g2ezrwhk53m@mnad6bb7n3ik>
 <b5c9d149-1a48-4c0d-aa0d-9ad331896f47@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5c9d149-1a48-4c0d-aa0d-9ad331896f47@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDEzMSBTYWx0ZWRfX9rTdTOQC/V50
 PeKXFE9ZvxZXIiUjfAsw0Du50ZuUPk2+zc2DtWSzqMpHUsBlNFw7aB2XO3rWwq9LtmiSCUSmgpu
 9VEXCxQPHOn0QUr6PHE90r8dgspU/nlgHS4HdePw4bTREgbKmIpmQLoqjFPdBuK801A4c2wVED2
 +A+adeh9TJDlmUYf1MBhW/SRg7kKW/Xhv07FNJ3AT2BjRRPrvsB+qBXl9oHS+rN4FkBDgWINWis
 RB5fEyKkKPwEVH81En7lVDRhnipBhabga+WOFuGLjZtPeROOY+LR06Uabr7kHDuftWWby3VsWbm
 mJ3mcRj0TfmzyILOA7LEJCoi3Q7CskTy3Id/tNUV+kPDHr9FFVmm+eMe3vOwl91btuzdnslolel
 zk5Ysr/8o9AVvDm0yTZ7RxCA6RhbfRzDw837Kb5oZaVO5MfjusCsSeCJ55iMPB1yBlTFG5iErPS
 ghC6FfF1I8mHn+QiAsQ==
X-Proofpoint-GUID: ql8UNzuiUVZLWTBbs9IscnLdVRFcWVQN
X-Proofpoint-ORIG-GUID: ql8UNzuiUVZLWTBbs9IscnLdVRFcWVQN
X-Authority-Analysis: v=2.4 cv=UvhT8ewB c=1 sm=1 tr=0 ts=6a202fa1 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=LflQWrLztFwobrB7iZEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 spamscore=0 impostorscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606030131
X-Spamd-Bar: ---
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6QVJXYHN4NPSKQV554YX53PYDEVS4VFZ
X-Message-ID-Hash: 6QVJXYHN4NPSKQV554YX53PYDEVS4VFZ
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:20:24 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 08/15] accel/qda: Add QUERY IOCTL and QDA UAPI header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6QVJXYHN4NPSKQV554YX53PYDEVS4VFZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	DATE_IN_PAST(1.00)[165];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS(0.00)[m:ekansh.gupta@oss.qualcomm.com,m:ogabbay@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:quic_bkumar@quicinc.com,m:quic_chennak@quicinc.com,m:srini@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:from_mime,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0419D668B79

T24gV2VkLCBKdW4gMDMsIDIwMjYgYXQgMTE6MjE6NDNBTSArMDUzMCwgRWthbnNoIEd1cHRhIHdy
b3RlOg0KPiBPbiAyMC0wNS0yMDI2IDE5OjU5LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOg0KPiA+
IE9uIFR1ZSwgTWF5IDE5LCAyMDI2IGF0IDExOjQ1OjU4QU0gKzA1MzAsIEVrYW5zaCBHdXB0YSB2
aWEgQjQgUmVsYXkgd3JvdGU6DQo+ID4+IEZyb206IEVrYW5zaCBHdXB0YSA8ZWthbnNoLmd1cHRh
QG9zcy5xdWFsY29tbS5jb20+DQo+ID4+DQo+ID4+IEludHJvZHVjZSB0aGUgRFJNX0lPQ1RMX1FE
QV9RVUVSWSBJT0NUTCwgd2hpY2ggYWxsb3dzIHVzZXItc3BhY2UgdG8NCj4gPj4gaWRlbnRpZnkg
d2hpY2ggRFNQIGRvbWFpbiBhIGdpdmVuIC9kZXYvYWNjZWwvYWNjZWwqIG5vZGUgcmVwcmVzZW50
cw0KPiA+PiAoZS5nLiAiY2RzcCIsICJhZHNwIikuDQo+ID4+DQo+ID4+IGluY2x1ZGUvdWFwaS9k
cm0vcWRhX2FjY2VsLmgNCj4gPj4gICBEZWZpbmVzIHRoZSBRREEgSU9DVEwgY29tbWFuZCBudW1i
ZXJzIGFuZCB0aGUgYXNzb2NpYXRlZCBkYXRhDQo+ID4+ICAgc3RydWN0dXJlcy4gVGhlIGhlYWRl
ciBmb2xsb3dzIHRoZSBzdGFuZGFyZCBEUk0gVUFQSSBjb252ZW50aW9uczoNCj4gPj4gICBfX3U4
L19fdTMyIHR5cGVzLCBhIEMrKyBleHRlcm4gIkMiIGd1YXJkLCBhbmQgR1BMLTIuMC1vbmx5IFdJ
VEgNCj4gPj4gICBMaW51eC1zeXNjYWxsLW5vdGUgbGljZW5zaW5nLg0KPiA+Pg0KPiA+PiBkcml2
ZXJzL2FjY2VsL3FkYS9xZGFfaW9jdGwuYyAvIHFkYV9pb2N0bC5oDQo+ID4+ICAgSW1wbGVtZW50
cyBxZGFfaW9jdGxfcXVlcnkoKSwgd2hpY2ggY29waWVzIHRoZSBEU1AgZG9tYWluIG5hbWUNCj4g
Pj4gICBzdG9yZWQgaW4gcWRhX2Rldi5kc3BfbmFtZSBpbnRvIHRoZSB1c2VyLXN1cHBsaWVkIGRy
bV9xZGFfcXVlcnkNCj4gPj4gICBidWZmZXIgdXNpbmcgc3Ryc2NweSgpLg0KPiA+Pg0KPiA+PiBk
cml2ZXJzL2FjY2VsL3FkYS9xZGFfZHJ2LmMNCj4gPj4gICBSZWdpc3RlcnMgdGhlIHFkYV9pb2N0
bHNbXSB0YWJsZSB3aXRoIHRoZSBkcm1fZHJpdmVyIHNvIHRoYXQgdGhlDQo+ID4+ICAgRFJNIGNv
cmUgZGlzcGF0Y2hlcyBEUk1fSU9DVExfUURBX1FVRVJZIHRvIHFkYV9pb2N0bF9xdWVyeSgpLg0K
PiA+Pg0KPiA+PiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS00LTYtc29ubmV0DQo+ID4+IFNp
Z25lZC1vZmYtYnk6IEVrYW5zaCBHdXB0YSA8ZWthbnNoLmd1cHRhQG9zcy5xdWFsY29tbS5jb20+
DQo+ID4+IC0tLQ0KPiA+PiAgZHJpdmVycy9hY2NlbC9xZGEvTWFrZWZpbGUgICAgfCAgMSArDQo+
ID4+ICBkcml2ZXJzL2FjY2VsL3FkYS9xZGFfZHJ2LmMgICB8ICA4ICsrKysrKysNCj4gPj4gIGRy
aXZlcnMvYWNjZWwvcWRhL3FkYV9pb2N0bC5jIHwgMjYgKysrKysrKysrKysrKysrKysrKysrKysN
Cj4gPj4gIGRyaXZlcnMvYWNjZWwvcWRhL3FkYV9pb2N0bC5oIHwgMTMgKysrKysrKysrKysrDQo+
ID4+ICBpbmNsdWRlL3VhcGkvZHJtL3FkYV9hY2NlbC5oICB8IDQ5ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPj4gIDUgZmlsZXMgY2hhbmdlZCwgOTcgaW5z
ZXJ0aW9ucygrKQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY2NlbC9xZGEvTWFr
ZWZpbGUgYi9kcml2ZXJzL2FjY2VsL3FkYS9NYWtlZmlsZQ0KPiA+PiBpbmRleCA3MDFmYWQ1ZmZi
NTAuLmI2NThkYWQzNWZlZSAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9hY2NlbC9xZGEvTWFr
ZWZpbGUNCj4gPj4gKysrIGIvZHJpdmVycy9hY2NlbC9xZGEvTWFrZWZpbGUNCj4gPj4gQEAgLTgs
NiArOCw3IEBAIG9iai0kKENPTkZJR19EUk1fQUNDRUxfUURBKQk6PSBxZGEubw0KPiA+PiAgcWRh
LXkgOj0gXA0KPiA+PiAgCXFkYV9jYi5vIFwNCj4gPj4gIAlxZGFfZHJ2Lm8gXA0KPiA+PiArCXFk
YV9pb2N0bC5vIFwNCj4gPj4gIAlxZGFfbWVtb3J5X21hbmFnZXIubyBcDQo+ID4+ICAJcWRhX3Jw
bXNnLm8NCj4gPj4gIA0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY2NlbC9xZGEvcWRhX2Ry
di5jIGIvZHJpdmVycy9hY2NlbC9xZGEvcWRhX2Rydi5jDQo+ID4+IGluZGV4IDBhZDVkOTg3M2Q3
ZS4uYmVjZDgzMWQxMGJlIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2FjY2VsL3FkYS9xZGFf
ZHJ2LmMNCj4gPj4gKysrIGIvZHJpdmVycy9hY2NlbC9xZGEvcWRhX2Rydi5jDQo+ID4+IEBAIC04
LDggKzgsMTAgQEANCj4gPj4gICNpbmNsdWRlIDxkcm0vZHJtX2dlbS5oPg0KPiA+PiAgI2luY2x1
ZGUgPGRybS9kcm1faW9jdGwuaD4NCj4gPj4gICNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+DQo+
ID4+ICsjaW5jbHVkZSA8ZHJtL3FkYV9hY2NlbC5oPg0KPiA+PiAgDQo+ID4+ICAjaW5jbHVkZSAi
cWRhX2Rydi5oIg0KPiA+PiArI2luY2x1ZGUgInFkYV9pb2N0bC5oIg0KPiA+PiAgI2luY2x1ZGUg
InFkYV9ycG1zZy5oIg0KPiA+PiAgDQo+ID4+ICBzdGF0aWMgaW50IHFkYV9vcGVuKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkNCj4gPj4gQEAgLTM2LDExICsz
OCwxNyBAQCBzdGF0aWMgdm9pZCBxZGFfcG9zdGNsb3NlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkNCj4gPj4gIA0KPiA+PiAgREVGSU5FX0RSTV9BQ0NFTF9G
T1BTKHFkYV9hY2NlbF9mb3BzKTsNCj4gPj4gIA0KPiA+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBk
cm1faW9jdGxfZGVzYyBxZGFfaW9jdGxzW10gPSB7DQo+ID4+ICsJRFJNX0lPQ1RMX0RFRl9EUlYo
UURBX1FVRVJZLCBxZGFfaW9jdGxfcXVlcnksIDApLA0KPiA+PiArfTsNCj4gPj4gKw0KPiA+PiAg
c3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZHJpdmVyIHFkYV9kcm1fZHJpdmVyID0gew0KPiA+PiAg
CS5kcml2ZXJfZmVhdHVyZXMgPSBEUklWRVJfQ09NUFVURV9BQ0NFTCwNCj4gPj4gIAkuZm9wcyA9
ICZxZGFfYWNjZWxfZm9wcywNCj4gPj4gIAkub3BlbiA9IHFkYV9vcGVuLA0KPiA+PiAgCS5wb3N0
Y2xvc2UgPSBxZGFfcG9zdGNsb3NlLA0KPiA+PiArCS5pb2N0bHMgPSBxZGFfaW9jdGxzLA0KPiA+
PiArCS5udW1faW9jdGxzID0gQVJSQVlfU0laRShxZGFfaW9jdGxzKSwNCj4gPj4gIAkubmFtZSA9
IFFEQV9EUklWRVJfTkFNRSwNCj4gPj4gIAkuZGVzYyA9ICJRdWFsY29tbSBEU1AgQWNjZWxlcmF0
b3IgRHJpdmVyIiwNCj4gPj4gIH07DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL3Fk
YS9xZGFfaW9jdGwuYyBiL2RyaXZlcnMvYWNjZWwvcWRhL3FkYV9pb2N0bC5jDQo+ID4+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0DQo+ID4+IGluZGV4IDAwMDAwMDAwMDAwMC4uNzYxZDM1NjdjMzNmDQo+
ID4+IC0tLSAvZGV2L251bGwNCj4gPj4gKysrIGIvZHJpdmVycy9hY2NlbC9xZGEvcWRhX2lvY3Rs
LmMNCj4gPj4gQEAgLTAsMCArMSwyNiBAQA0KPiA+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAtb25seQ0KPiA+PiArLy8gQ29weXJpZ2h0IChjKSBRdWFsY29tbSBUZWNobm9s
b2dpZXMsIEluYy4gYW5kL29yIGl0cyBzdWJzaWRpYXJpZXMuDQo+ID4+ICsjaW5jbHVkZSA8ZHJt
L2RybV9pb2N0bC5oPg0KPiA+PiArI2luY2x1ZGUgPGRybS9xZGFfYWNjZWwuaD4NCj4gPj4gKyNp
bmNsdWRlICJxZGFfZHJ2LmgiDQo+ID4+ICsjaW5jbHVkZSAicWRhX2lvY3RsLmgiDQo+ID4+ICsN
Cj4gPj4gKy8qKg0KPiA+PiArICogcWRhX2lvY3RsX3F1ZXJ5KCkgLSBRdWVyeSBEU1AgZGV2aWNl
IGluZm9ybWF0aW9uDQo+ID4+ICsgKiBAZGV2OiBEUk0gZGV2aWNlIHN0cnVjdHVyZQ0KPiA+PiAr
ICogQGRhdGE6IFVzZXItc3BhY2UgZGF0YSAoc3RydWN0IGRybV9xZGFfcXVlcnkpDQo+ID4+ICsg
KiBAZmlsZV9wcml2OiBEUk0gZmlsZSBwcml2YXRlIGRhdGENCj4gPj4gKyAqDQo+ID4+ICsgKiBS
ZXR1cm46IDAgb24gc3VjY2VzcywgbmVnYXRpdmUgZXJyb3IgY29kZSBvbiBmYWlsdXJlDQo+ID4+
ICsgKi8NCj4gPj4gK2ludCBxZGFfaW9jdGxfcXVlcnkoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
dm9pZCAqZGF0YSwgc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYpDQo+ID4+ICt7DQo+ID4+ICsJ
c3RydWN0IGRybV9xZGFfcXVlcnkgKmFyZ3MgPSBkYXRhOw0KPiA+PiArCXN0cnVjdCBxZGFfZGV2
ICpxZGV2Ow0KPiA+PiArDQo+ID4+ICsJcWRldiA9IHFkYV9kZXZfZnJvbV9kcm0oZGV2KTsNCj4g
Pj4gKw0KPiA+PiArCXN0cnNjcHkoYXJncy0+ZHNwX25hbWUsIHFkZXYtPmRzcF9uYW1lLCBzaXpl
b2YoYXJncy0+ZHNwX25hbWUpKTsNCj4gPj4gKw0KPiA+PiArCXJldHVybiAwOw0KPiA+PiArfQ0K
PiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY2NlbC9xZGEvcWRhX2lvY3RsLmggYi9kcml2ZXJz
L2FjY2VsL3FkYS9xZGFfaW9jdGwuaA0KPiA+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+PiBp
bmRleCAwMDAwMDAwMDAwMDAuLmI4ZmQ1MzZhMTExZg0KPiA+PiAtLS0gL2Rldi9udWxsDQo+ID4+
ICsrKyBiL2RyaXZlcnMvYWNjZWwvcWRhL3FkYV9pb2N0bC5oDQo+ID4+IEBAIC0wLDAgKzEsMTMg
QEANCj4gPj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8NCj4g
Pj4gKy8qDQo+ID4+ICsgKiBDb3B5cmlnaHQgKGMpIFF1YWxjb21tIFRlY2hub2xvZ2llcywgSW5j
LiBhbmQvb3IgaXRzIHN1YnNpZGlhcmllcy4NCj4gPj4gKyAqLw0KPiA+PiArDQo+ID4+ICsjaWZu
ZGVmIF9fUURBX0lPQ1RMX0hfXw0KPiA+PiArI2RlZmluZSBfX1FEQV9JT0NUTF9IX18NCj4gPj4g
Kw0KPiA+PiArI2luY2x1ZGUgInFkYV9kcnYuaCINCj4gPj4gKw0KPiA+PiAraW50IHFkYV9pb2N0
bF9xdWVyeShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLCBzdHJ1Y3QgZHJtX2Zp
bGUgKmZpbGVfcHJpdik7DQo+ID4+ICsNCj4gPj4gKyNlbmRpZiAvKiBfX1FEQV9JT0NUTF9IX18g
Ki8NCj4gPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vcWRhX2FjY2VsLmggYi9pbmNs
dWRlL3VhcGkvZHJtL3FkYV9hY2NlbC5oDQo+ID4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4+
IGluZGV4IDAwMDAwMDAwMDAwMC4uMTk3MWE0MjYzMDY1DQo+ID4+IC0tLSAvZGV2L251bGwNCj4g
Pj4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9xZGFfYWNjZWwuaA0KPiA+PiBAQCAtMCwwICsxLDQ5
IEBADQo+ID4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5IFdJVEgg
TGludXgtc3lzY2FsbC1ub3RlICovDQo+ID4+ICsvKg0KPiA+PiArICogQ29weXJpZ2h0IChjKSBR
dWFsY29tbSBUZWNobm9sb2dpZXMsIEluYy4gYW5kL29yIGl0cyBzdWJzaWRpYXJpZXMuDQo+ID4+
ICsgKi8NCj4gPj4gKw0KPiA+PiArI2lmbmRlZiBfX1FEQV9BQ0NFTF9IX18NCj4gPj4gKyNkZWZp
bmUgX19RREFfQUNDRUxfSF9fDQo+ID4+ICsNCj4gPj4gKyNpbmNsdWRlICJkcm0uaCINCj4gPj4g
Kw0KPiA+PiArI2lmIGRlZmluZWQoX19jcGx1c3BsdXMpDQo+ID4+ICtleHRlcm4gIkMiIHsNCj4g
Pj4gKyNlbmRpZg0KPiA+PiArDQo+ID4+ICsvKg0KPiA+PiArICogUURBIElPQ1RMIGNvbW1hbmQg
bnVtYmVycw0KPiA+PiArICoNCj4gPj4gKyAqIFRoZXNlIGRlZmluZSB0aGUgY29tbWFuZCBudW1i
ZXJzIGZvciBRREEtc3BlY2lmaWMgSU9DVExzLg0KPiA+PiArICogVGhleSBhcmUgdXNlZCB3aXRo
IERSTV9DT01NQU5EX0JBU0UgdG8gY3JlYXRlIHRoZSBmdWxsIElPQ1RMIG51bWJlcnMuDQo+ID4+
ICsgKi8NCj4gPj4gKyNkZWZpbmUgRFJNX1FEQV9RVUVSWQkJMHgwMA0KPiA+PiArDQo+ID4+ICsv
Kg0KPiA+PiArICogUURBIElPQ1RMIGRlZmluaXRpb25zDQo+ID4+ICsgKg0KPiA+PiArICogVGhl
c2UgbWFjcm9zIGRlZmluZSB0aGUgYWN0dWFsIElPQ1RMIG51bWJlcnMgdXNlZCBieSB1c2Vyc3Bh
Y2UgYXBwbGljYXRpb25zLg0KPiA+PiArICogVGhleSBjb21iaW5lIHRoZSBjb21tYW5kIG51bWJl
cnMgd2l0aCBEUk1fQ09NTUFORF9CQVNFIGFuZCBzcGVjaWZ5IHRoZQ0KPiA+PiArICogZGF0YSBz
dHJ1Y3R1cmUgYW5kIGRpcmVjdGlvbiAocmVhZC93cml0ZSkgZm9yIGVhY2ggSU9DVEwuDQo+ID4+
ICsgKi8NCj4gPj4gKyNkZWZpbmUgRFJNX0lPQ1RMX1FEQV9RVUVSWQkJRFJNX0lPUihEUk1fQ09N
TUFORF9CQVNFICsgRFJNX1FEQV9RVUVSWSwgXA0KPiA+PiArCQkJCQkgc3RydWN0IGRybV9xZGFf
cXVlcnkpDQo+ID4+ICsNCj4gPj4gKy8qKg0KPiA+PiArICogc3RydWN0IGRybV9xZGFfcXVlcnkg
LSBEZXZpY2UgaW5mb3JtYXRpb24gcXVlcnkgc3RydWN0dXJlDQo+ID4+ICsgKiBAZHNwX25hbWU6
IE5hbWUgb2YgRFNQIChlLmcuLCAiYWRzcCIsICJjZHNwIiwgImNkc3AxIiwgImdkc3AwIiwgImdk
c3AxIikNCj4gPj4gKyAqDQo+ID4+ICsgKiBUaGlzIHN0cnVjdHVyZSBpcyB1c2VkIHdpdGggRFJN
X0lPQ1RMX1FEQV9RVUVSWSB0byBxdWVyeSBkZXZpY2UgdHlwZSwNCj4gPj4gKyAqIGFsbG93aW5n
IHVzZXJzcGFjZSB0byBpZGVudGlmeSB3aGljaCBEU1AgYSBkZXZpY2Ugbm9kZSByZXByZXNlbnRz
LiBUaGUNCj4gPj4gKyAqIGtlcm5lbCBwcm92aWRlcyB0aGUgRFNQIG5hbWUgZGlyZWN0bHkgYXMg
YSBudWxsLXRlcm1pbmF0ZWQgc3RyaW5nLg0KPiA+PiArICovDQo+ID4+ICtzdHJ1Y3QgZHJtX3Fk
YV9xdWVyeSB7DQo+ID4+ICsJX191OCBkc3BfbmFtZVsxNl07DQo+ID4gDQo+ID4gQXJlIHlvdSBz
dXJlIHRoYXQgeW91IHdhbnQgdG8gcXVlcnkgb25seSB0aGUgbmFtZT8gTm8gZXh0cmEgb3B0aW9u
cywgbm8NCj4gPiBhdHRyaWJ1dGVzLCBubyBoYXJkd2FyZSBjYXBhYmlsaXRpZXM/DQo+IFRoZXJl
IGFyZSBwbGFucyB0byBleHRlbmQgdGhpcyBpb2N0bCB0byBzdXBwb3J0IERTUCBjYXBhYmlsaXRp
ZXMgYW5kIGZldw0KPiBvdGhlciBxdWVyeSBvcHRpb25zLCBidXQgYXMgcGVyIG15IHVuZGVyc3Rh
bmRpbmcsIEkgZG9uJ3QgbmVlZCB0byBhZGQNCj4gcmVzZXJ2ZWQgSU9DVExzIGluIGRybSBjYXNl
IGFuZCBJIGNhbiBleHRlbmQgaXQgaW4gZnV0dXJlLiBQbGVhc2UNCj4gY29ycmVjdCBtZSBpZiBt
eSB1bmRlcnN0YW5kaW5nIGlzIHdyb25nIGFuZCBJIHNob3VsZCBhZGQgcmVzZXJ2ZWQgZmllbGRz
Lg0KPiANCj4gQ29weWluZyB0aGUgc3RhdGVtZW50IGZyb20gdGhlIGRvY1sxXS4NCj4gIk5vdGUg
dGhhdCBkcm1faW9jdGwoKSBhdXRvbWF0aWNhbGx5IHplcm8tZXh0ZW5kcyBzdHJ1Y3R1cmVzLCBo
ZW5jZSBtYWtlDQo+IHN1cmUgeW91IGNhbiBhZGQgbW9yZSBzdHVmZiBhdCB0aGUgZW5kLCBpLmUu
IGRvbuKAmXQgcHV0IGEgdmFyaWFibGUgc2l6ZWQNCj4gYXJyYXkgdGhlcmUuIg0KDQpJJ2QgcmF0
aGVyIGhhdmUgYSBxdWVyeSB0eXBlIGFzIGFuIGlucHV0IGhlcmUsIHRvIGJlIGFibGUgdG8gcmV0
dXJuIG9uZQ0Kb2YgcXVlcnJpZWQgcGFyYW1zLg0KDQo+IA0KPiBbMV0NCj4gaHR0cHM6Ly93d3cu
a2VybmVsLm9yZy9kb2MvaHRtbC92Ny4wL2dwdS9kcm0tdWFwaS5odG1sI2lvY3RsLXN1cHBvcnQt
b24tZGV2aWNlLW5vZGVzPg0KPiANCj4gPj4gK307DQo+ID4+ICsNCj4gPj4gKyNpZiBkZWZpbmVk
KF9fY3BsdXNwbHVzKQ0KPiA+PiArfQ0KPiA+PiArI2VuZGlmDQo+ID4+ICsNCj4gPj4gKyNlbmRp
ZiAvKiBfX1FEQV9BQ0NFTF9IX18gKi8NCj4gPj4NCj4gPj4gLS0gDQo+ID4+IDIuMzQuMQ0KPiA+
Pg0KPiA+Pg0KPiA+IA0KPiANCg0KLS0gDQpXaXRoIGJlc3Qgd2lzaGVzDQpEbWl0cnkNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hCG2BtVIKWpwTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:21:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A74B5668B37
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:21:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=gLRejsnA;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BCA9F40A68
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:21:55 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id A49543F79C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 05:51:54 +0000 (UTC)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6535W9kC1619575
	for <linaro-mm-sig@lists.linaro.org>; Wed, 3 Jun 2026 05:51:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AoBXmuqEDW/B4n4M1GtYaMi2nefd/8NaLnywKReRnKk=; b=gLRejsnAQCm/y5ik
	ugn0LJwtvecXJpobc9QOcYHsKyVw+1ctVQ18LgKhz/YIJ8x77vwGfOGruVZ5gEz6
	PSY3LGCD/rL1Hrpr5QKxUa0viKgbwk6mSIWn+e/jqfFl4jt9bA+jSSS2Jc0BuH3A
	64KAweYROTEsZ2x7VVaixA1e4+OChDAb/vVr5su+lQxNgVXcW4dSZo51c/lhoi7H
	8GMSAC4i+tsgxdkS+RcNO7Xik29ObYSD5xYQSRNZSLK2jYAOKtjKyUZwvdRy81cY
	Ia63ghCRnpR7QDZpBU/i97wmIe/mD4/sAwW/obIKA1m9GJoUica6Q3apSplGsIEJ
	iTxykw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejdq7r5mm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 05:51:53 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2c0c331eda3so43283715ad.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 22:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780465913; x=1781070713; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AoBXmuqEDW/B4n4M1GtYaMi2nefd/8NaLnywKReRnKk=;
        b=Y1POMi/RlsiHGe6uL2ZylT4wi16n++szA2uqIWPixpqX7+KUeTMGlxn+xjrW/I7mhc
         riAIu+iOx7ly3hpETId48qVcTwuoaK5R2tSalPkHw5y2tHkgJ166DHSkDRW/Ops8tEyQ
         AD5IY6M4233iCpefgiVazfcnVmvUNfvVWsi3S5AW0bhZ+nXERgFM8u7iZ3NNLScwkfwv
         dGrTfSYLWdtLzB1z3wKtNT6skIQaQ83V5KJ8YvMxPwx/oCm5pjdNrvgFkADgyBBJ1tMb
         T93UPNx2Mu+vqq8sP5yTFrVLkN/M3jlZ5fd51lR1K+t0RWhzBdz9tvaDMrRDPhVSLwYq
         cewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780465913; x=1781070713;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AoBXmuqEDW/B4n4M1GtYaMi2nefd/8NaLnywKReRnKk=;
        b=WnfWQpIi+N/WRSRUoy+ydUCcfbR72fIx6ogKD0xLQaAvwSp+V7t7G/AjOE2VG2j/y/
         Vs/JEgGQcsb08vHk+8ksvXMUhlD14TdK+SKKP0YtegS9VV/eibKrRVHddVN+1cWmRCuE
         8fPytAI84ZzbAnTG43mPpFSaysLmU4pQhcNnI9GGpn2wgtb7ZMzF1/coxZyvDHw0eT9L
         HmjCV+FxDad3ioFGHz9RhSgy1J1TVDrMaNgDQk1fAekENXHsdqU2FnLiZQGRaC6pWt5L
         AB5CIZjb6Sqc4Ve9QOlgJC0y5bJVpUk6N0MmKRbDtTfAV03UopAwPk79tkCy6fnJk16m
         G8Bw==
X-Forwarded-Encrypted: i=1; AFNElJ+MeGRD01WattIEaQ4Nywb5zuTBjO0nyt3DR5FGenZ/zb4Dsqum7RONZPdj+RgOiSCAACUVArfiFz8lrIf1@lists.linaro.org
X-Gm-Message-State: AOJu0Yy9o4z52IPBlr6KJNl01+/JNrxjsbRC2wSc79p/wihmpcZIoP6M
	rX0upIgLIq23BUXy6uftb6lylT5JX671osOEHtcRuSwzTdZ8G6XnnyxZ0eT+61sUTVR/gHoswvg
	Tk9idlnEQkvKeNDxZSzfZ/KJ30xuUlt7DMeDtMYhoeeCKPEM9l8gQrJQASBP3jJbloUJ7Eg==
X-Gm-Gg: Acq92OHQFJRFyKmi2qhAIDbZC4rGUPnz0XPRztuAkSD94JJcjaVrL+hUuq9/B+i8YS5
	5DojaU2WCEzutvIljDpyMr/Ph4jvJmBg72RsDyz+qC3ORv/niR9FFbVDGbolOf4EUYYF68Dkuy4
	a2ZTkJcha3h4Rs4tpSVfrymj0j1qLio3aUHWebolaHm9O1A0N7pVpYIRrqC8qb0wknw9r28fhye
	BxUtUkJ/KbAAsZFhcZr7sudtL8V6SRaUZx2ttRKI+UiMAU+JaRLzTHvTsUVdsLLx1ts52oTFwwu
	tL/aJ88YQZjqGyrK9iG6M1JPDmjOVq0vzq3xuWGtP8paevMbtmy5GWJKCczlP0sQPtW35rUTJc3
	Bm2fbJdWV+uGVmhiKVSFSDsLzZFZIO2c+9WYC+wqFZ0EinhFbcjVwgadJHn8G
X-Received: by 2002:a17:903:2312:b0:2be:fefc:d5b9 with SMTP id d9443c01a7336-2c163a1352amr20027025ad.5.1780465912916;
        Tue, 02 Jun 2026 22:51:52 -0700 (PDT)
X-Received: by 2002:a17:903:2312:b0:2be:fefc:d5b9 with SMTP id d9443c01a7336-2c163a1352amr20026725ad.5.1780465912431;
        Tue, 02 Jun 2026 22:51:52 -0700 (PDT)
Received: from [10.204.78.54] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c16649d2d4sm11280795ad.77.2026.06.02.22.51.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 22:51:51 -0700 (PDT)
Message-ID: <b5c9d149-1a48-4c0d-aa0d-9ad331896f47@oss.qualcomm.com>
Date: Wed, 3 Jun 2026 11:21:43 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-8-b2d984c297f8@oss.qualcomm.com>
 <m4zo2nkxtl5yeyo7riuata6r5saflmdgqf37cz2g2ezrwhk53m@mnad6bb7n3ik>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <m4zo2nkxtl5yeyo7riuata6r5saflmdgqf37cz2g2ezrwhk53m@mnad6bb7n3ik>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDA1MyBTYWx0ZWRfX0yMzNM0DXDiw
 TgL4+ZUwwl1FnLjwDDP+2nSXmHwIxjWz6F3mD5OuLC2sy34SmwsnwHGKvrWyj/+lO/4tXpnS6Sr
 pMnCyTtPdJgLOL1aZhI6zLdwZFLxQ5yZmxeu38sgS2yjEa/bdm2FWcluPxlb7N30A6m8LSjDmto
 HLW1rvn93EN/LDrHnEdhvrck3dR7n37VOZH2NSy+R4WMMuxRqxPh81NZjR03pGv9C7CYr5QfLHy
 681wn+19tZtsly701HVYMC6/p9xPNSzq9sH2HpWkhOs/PZm/h3B8zvBNidwwsvPA7vhnQz0bYRR
 cebWqO34ZesqRFZKiIcrpzJdlXjnVyvd06jrIVRz/lCAc8aU3uzw3aRpnw+RodKkSGnzctnoCLk
 skQG81TL8sEpx9DRTE6DfrYQL0dOnwp7ED2cOi9RMNl+WPNI0Zctdfu7ZVFkhX3EGCsMIh2xHl0
 5F/KETRunnPumDXbCkw==
X-Proofpoint-ORIG-GUID: 208OB4CfpuxEVG_JI-XFlMDWbHi4vzK4
X-Proofpoint-GUID: 208OB4CfpuxEVG_JI-XFlMDWbHi4vzK4
X-Authority-Analysis: v=2.4 cv=ccniaHDM c=1 sm=1 tr=0 ts=6a1fc0f9 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=-e_ofER35s36BqmFglcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_02,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030053
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4BKMNZIAUX3VNJIUSOJJRUW5I6DCMAQK
X-Message-ID-Hash: 4BKMNZIAUX3VNJIUSOJJRUW5I6DCMAQK
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:20:22 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 08/15] accel/qda: Add QUERY IOCTL and QDA UAPI header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4BKMNZIAUX3VNJIUSOJJRUW5I6DCMAQK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[173];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:ogabbay@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:quic_bkumar@quicinc.com,m:quic_chennak@quicinc.com,m:srini@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,linaro.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A74B5668B37

T24gMjAtMDUtMjAyNiAxOTo1OSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToNCj4gT24gVHVlLCBN
YXkgMTksIDIwMjYgYXQgMTE6NDU6NThBTSArMDUzMCwgRWthbnNoIEd1cHRhIHZpYSBCNCBSZWxh
eSB3cm90ZToNCj4+IEZyb206IEVrYW5zaCBHdXB0YSA8ZWthbnNoLmd1cHRhQG9zcy5xdWFsY29t
bS5jb20+DQo+Pg0KPj4gSW50cm9kdWNlIHRoZSBEUk1fSU9DVExfUURBX1FVRVJZIElPQ1RMLCB3
aGljaCBhbGxvd3MgdXNlci1zcGFjZSB0bw0KPj4gaWRlbnRpZnkgd2hpY2ggRFNQIGRvbWFpbiBh
IGdpdmVuIC9kZXYvYWNjZWwvYWNjZWwqIG5vZGUgcmVwcmVzZW50cw0KPj4gKGUuZy4gImNkc3Ai
LCAiYWRzcCIpLg0KPj4NCj4+IGluY2x1ZGUvdWFwaS9kcm0vcWRhX2FjY2VsLmgNCj4+ICAgRGVm
aW5lcyB0aGUgUURBIElPQ1RMIGNvbW1hbmQgbnVtYmVycyBhbmQgdGhlIGFzc29jaWF0ZWQgZGF0
YQ0KPj4gICBzdHJ1Y3R1cmVzLiBUaGUgaGVhZGVyIGZvbGxvd3MgdGhlIHN0YW5kYXJkIERSTSBV
QVBJIGNvbnZlbnRpb25zOg0KPj4gICBfX3U4L19fdTMyIHR5cGVzLCBhIEMrKyBleHRlcm4gIkMi
IGd1YXJkLCBhbmQgR1BMLTIuMC1vbmx5IFdJVEgNCj4+ICAgTGludXgtc3lzY2FsbC1ub3RlIGxp
Y2Vuc2luZy4NCj4+DQo+PiBkcml2ZXJzL2FjY2VsL3FkYS9xZGFfaW9jdGwuYyAvIHFkYV9pb2N0
bC5oDQo+PiAgIEltcGxlbWVudHMgcWRhX2lvY3RsX3F1ZXJ5KCksIHdoaWNoIGNvcGllcyB0aGUg
RFNQIGRvbWFpbiBuYW1lDQo+PiAgIHN0b3JlZCBpbiBxZGFfZGV2LmRzcF9uYW1lIGludG8gdGhl
IHVzZXItc3VwcGxpZWQgZHJtX3FkYV9xdWVyeQ0KPj4gICBidWZmZXIgdXNpbmcgc3Ryc2NweSgp
Lg0KPj4NCj4+IGRyaXZlcnMvYWNjZWwvcWRhL3FkYV9kcnYuYw0KPj4gICBSZWdpc3RlcnMgdGhl
IHFkYV9pb2N0bHNbXSB0YWJsZSB3aXRoIHRoZSBkcm1fZHJpdmVyIHNvIHRoYXQgdGhlDQo+PiAg
IERSTSBjb3JlIGRpc3BhdGNoZXMgRFJNX0lPQ1RMX1FEQV9RVUVSWSB0byBxZGFfaW9jdGxfcXVl
cnkoKS4NCj4+DQo+PiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS00LTYtc29ubmV0DQo+PiBT
aWduZWQtb2ZmLWJ5OiBFa2Fuc2ggR3VwdGEgPGVrYW5zaC5ndXB0YUBvc3MucXVhbGNvbW0uY29t
Pg0KPj4gLS0tDQo+PiAgZHJpdmVycy9hY2NlbC9xZGEvTWFrZWZpbGUgICAgfCAgMSArDQo+PiAg
ZHJpdmVycy9hY2NlbC9xZGEvcWRhX2Rydi5jICAgfCAgOCArKysrKysrDQo+PiAgZHJpdmVycy9h
Y2NlbC9xZGEvcWRhX2lvY3RsLmMgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKw0KPj4gIGRy
aXZlcnMvYWNjZWwvcWRhL3FkYV9pb2N0bC5oIHwgMTMgKysrKysrKysrKysrDQo+PiAgaW5jbHVk
ZS91YXBpL2RybS9xZGFfYWNjZWwuaCAgfCA0OSArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrDQo+PiAgNSBmaWxlcyBjaGFuZ2VkLCA5NyBpbnNlcnRpb25zKCspDQo+
Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNjZWwvcWRhL01ha2VmaWxlIGIvZHJpdmVycy9h
Y2NlbC9xZGEvTWFrZWZpbGUNCj4+IGluZGV4IDcwMWZhZDVmZmI1MC4uYjY1OGRhZDM1ZmVlIDEw
MDY0NA0KPj4gLS0tIGEvZHJpdmVycy9hY2NlbC9xZGEvTWFrZWZpbGUNCj4+ICsrKyBiL2RyaXZl
cnMvYWNjZWwvcWRhL01ha2VmaWxlDQo+PiBAQCAtOCw2ICs4LDcgQEAgb2JqLSQoQ09ORklHX0RS
TV9BQ0NFTF9RREEpCTo9IHFkYS5vDQo+PiAgcWRhLXkgOj0gXA0KPj4gIAlxZGFfY2IubyBcDQo+
PiAgCXFkYV9kcnYubyBcDQo+PiArCXFkYV9pb2N0bC5vIFwNCj4+ICAJcWRhX21lbW9yeV9tYW5h
Z2VyLm8gXA0KPj4gIAlxZGFfcnBtc2cubw0KPj4gIA0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
YWNjZWwvcWRhL3FkYV9kcnYuYyBiL2RyaXZlcnMvYWNjZWwvcWRhL3FkYV9kcnYuYw0KPj4gaW5k
ZXggMGFkNWQ5ODczZDdlLi5iZWNkODMxZDEwYmUgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2Fj
Y2VsL3FkYS9xZGFfZHJ2LmMNCj4+ICsrKyBiL2RyaXZlcnMvYWNjZWwvcWRhL3FkYV9kcnYuYw0K
Pj4gQEAgLTgsOCArOCwxMCBAQA0KPj4gICNpbmNsdWRlIDxkcm0vZHJtX2dlbS5oPg0KPj4gICNp
bmNsdWRlIDxkcm0vZHJtX2lvY3RsLmg+DQo+PiAgI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4N
Cj4+ICsjaW5jbHVkZSA8ZHJtL3FkYV9hY2NlbC5oPg0KPj4gIA0KPj4gICNpbmNsdWRlICJxZGFf
ZHJ2LmgiDQo+PiArI2luY2x1ZGUgInFkYV9pb2N0bC5oIg0KPj4gICNpbmNsdWRlICJxZGFfcnBt
c2cuaCINCj4+ICANCj4+ICBzdGF0aWMgaW50IHFkYV9vcGVuKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkNCj4+IEBAIC0zNiwxMSArMzgsMTcgQEAgc3RhdGlj
IHZvaWQgcWRhX3Bvc3RjbG9zZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2Zp
bGUgKmZpbGUpDQo+PiAgDQo+PiAgREVGSU5FX0RSTV9BQ0NFTF9GT1BTKHFkYV9hY2NlbF9mb3Bz
KTsNCj4+ICANCj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pb2N0bF9kZXNjIHFkYV9pb2N0
bHNbXSA9IHsNCj4+ICsJRFJNX0lPQ1RMX0RFRl9EUlYoUURBX1FVRVJZLCBxZGFfaW9jdGxfcXVl
cnksIDApLA0KPj4gK307DQo+PiArDQo+PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZHJpdmVy
IHFkYV9kcm1fZHJpdmVyID0gew0KPj4gIAkuZHJpdmVyX2ZlYXR1cmVzID0gRFJJVkVSX0NPTVBV
VEVfQUNDRUwsDQo+PiAgCS5mb3BzID0gJnFkYV9hY2NlbF9mb3BzLA0KPj4gIAkub3BlbiA9IHFk
YV9vcGVuLA0KPj4gIAkucG9zdGNsb3NlID0gcWRhX3Bvc3RjbG9zZSwNCj4+ICsJLmlvY3RscyA9
IHFkYV9pb2N0bHMsDQo+PiArCS5udW1faW9jdGxzID0gQVJSQVlfU0laRShxZGFfaW9jdGxzKSwN
Cj4+ICAJLm5hbWUgPSBRREFfRFJJVkVSX05BTUUsDQo+PiAgCS5kZXNjID0gIlF1YWxjb21tIERT
UCBBY2NlbGVyYXRvciBEcml2ZXIiLA0KPj4gIH07DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9h
Y2NlbC9xZGEvcWRhX2lvY3RsLmMgYi9kcml2ZXJzL2FjY2VsL3FkYS9xZGFfaW9jdGwuYw0KPj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uNzYxZDM1NjdjMzNm
DQo+PiAtLS0gL2Rldi9udWxsDQo+PiArKysgYi9kcml2ZXJzL2FjY2VsL3FkYS9xZGFfaW9jdGwu
Yw0KPj4gQEAgLTAsMCArMSwyNiBAQA0KPj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9ubHkNCj4+ICsvLyBDb3B5cmlnaHQgKGMpIFF1YWxjb21tIFRlY2hub2xvZ2llcywg
SW5jLiBhbmQvb3IgaXRzIHN1YnNpZGlhcmllcy4NCj4+ICsjaW5jbHVkZSA8ZHJtL2RybV9pb2N0
bC5oPg0KPj4gKyNpbmNsdWRlIDxkcm0vcWRhX2FjY2VsLmg+DQo+PiArI2luY2x1ZGUgInFkYV9k
cnYuaCINCj4+ICsjaW5jbHVkZSAicWRhX2lvY3RsLmgiDQo+PiArDQo+PiArLyoqDQo+PiArICog
cWRhX2lvY3RsX3F1ZXJ5KCkgLSBRdWVyeSBEU1AgZGV2aWNlIGluZm9ybWF0aW9uDQo+PiArICog
QGRldjogRFJNIGRldmljZSBzdHJ1Y3R1cmUNCj4+ICsgKiBAZGF0YTogVXNlci1zcGFjZSBkYXRh
IChzdHJ1Y3QgZHJtX3FkYV9xdWVyeSkNCj4+ICsgKiBAZmlsZV9wcml2OiBEUk0gZmlsZSBwcml2
YXRlIGRhdGENCj4+ICsgKg0KPj4gKyAqIFJldHVybjogMCBvbiBzdWNjZXNzLCBuZWdhdGl2ZSBl
cnJvciBjb2RlIG9uIGZhaWx1cmUNCj4+ICsgKi8NCj4+ICtpbnQgcWRhX2lvY3RsX3F1ZXJ5KHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9w
cml2KQ0KPj4gK3sNCj4+ICsJc3RydWN0IGRybV9xZGFfcXVlcnkgKmFyZ3MgPSBkYXRhOw0KPj4g
KwlzdHJ1Y3QgcWRhX2RldiAqcWRldjsNCj4+ICsNCj4+ICsJcWRldiA9IHFkYV9kZXZfZnJvbV9k
cm0oZGV2KTsNCj4+ICsNCj4+ICsJc3Ryc2NweShhcmdzLT5kc3BfbmFtZSwgcWRldi0+ZHNwX25h
bWUsIHNpemVvZihhcmdzLT5kc3BfbmFtZSkpOw0KPj4gKw0KPj4gKwlyZXR1cm4gMDsNCj4+ICt9
DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY2NlbC9xZGEvcWRhX2lvY3RsLmggYi9kcml2ZXJz
L2FjY2VsL3FkYS9xZGFfaW9jdGwuaA0KPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4+IGluZGV4
IDAwMDAwMDAwMDAwMC4uYjhmZDUzNmExMTFmDQo+PiAtLS0gL2Rldi9udWxsDQo+PiArKysgYi9k
cml2ZXJzL2FjY2VsL3FkYS9xZGFfaW9jdGwuaA0KPj4gQEAgLTAsMCArMSwxMyBAQA0KPj4gKy8q
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8NCj4+ICsvKg0KPj4gKyAq
IENvcHlyaWdodCAoYykgUXVhbGNvbW0gVGVjaG5vbG9naWVzLCBJbmMuIGFuZC9vciBpdHMgc3Vi
c2lkaWFyaWVzLg0KPj4gKyAqLw0KPj4gKw0KPj4gKyNpZm5kZWYgX19RREFfSU9DVExfSF9fDQo+
PiArI2RlZmluZSBfX1FEQV9JT0NUTF9IX18NCj4+ICsNCj4+ICsjaW5jbHVkZSAicWRhX2Rydi5o
Ig0KPj4gKw0KPj4gK2ludCBxZGFfaW9jdGxfcXVlcnkoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
dm9pZCAqZGF0YSwgc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYpOw0KPj4gKw0KPj4gKyNlbmRp
ZiAvKiBfX1FEQV9JT0NUTF9IX18gKi8NCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJt
L3FkYV9hY2NlbC5oIGIvaW5jbHVkZS91YXBpL2RybS9xZGFfYWNjZWwuaA0KPj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQNCj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uMTk3MWE0MjYzMDY1DQo+PiAtLS0g
L2Rldi9udWxsDQo+PiArKysgYi9pbmNsdWRlL3VhcGkvZHJtL3FkYV9hY2NlbC5oDQo+PiBAQCAt
MCwwICsxLDQ5IEBADQo+PiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25s
eSBXSVRIIExpbnV4LXN5c2NhbGwtbm90ZSAqLw0KPj4gKy8qDQo+PiArICogQ29weXJpZ2h0IChj
KSBRdWFsY29tbSBUZWNobm9sb2dpZXMsIEluYy4gYW5kL29yIGl0cyBzdWJzaWRpYXJpZXMuDQo+
PiArICovDQo+PiArDQo+PiArI2lmbmRlZiBfX1FEQV9BQ0NFTF9IX18NCj4+ICsjZGVmaW5lIF9f
UURBX0FDQ0VMX0hfXw0KPj4gKw0KPj4gKyNpbmNsdWRlICJkcm0uaCINCj4+ICsNCj4+ICsjaWYg
ZGVmaW5lZChfX2NwbHVzcGx1cykNCj4+ICtleHRlcm4gIkMiIHsNCj4+ICsjZW5kaWYNCj4+ICsN
Cj4+ICsvKg0KPj4gKyAqIFFEQSBJT0NUTCBjb21tYW5kIG51bWJlcnMNCj4+ICsgKg0KPj4gKyAq
IFRoZXNlIGRlZmluZSB0aGUgY29tbWFuZCBudW1iZXJzIGZvciBRREEtc3BlY2lmaWMgSU9DVExz
Lg0KPj4gKyAqIFRoZXkgYXJlIHVzZWQgd2l0aCBEUk1fQ09NTUFORF9CQVNFIHRvIGNyZWF0ZSB0
aGUgZnVsbCBJT0NUTCBudW1iZXJzLg0KPj4gKyAqLw0KPj4gKyNkZWZpbmUgRFJNX1FEQV9RVUVS
WQkJMHgwMA0KPj4gKw0KPj4gKy8qDQo+PiArICogUURBIElPQ1RMIGRlZmluaXRpb25zDQo+PiAr
ICoNCj4+ICsgKiBUaGVzZSBtYWNyb3MgZGVmaW5lIHRoZSBhY3R1YWwgSU9DVEwgbnVtYmVycyB1
c2VkIGJ5IHVzZXJzcGFjZSBhcHBsaWNhdGlvbnMuDQo+PiArICogVGhleSBjb21iaW5lIHRoZSBj
b21tYW5kIG51bWJlcnMgd2l0aCBEUk1fQ09NTUFORF9CQVNFIGFuZCBzcGVjaWZ5IHRoZQ0KPj4g
KyAqIGRhdGEgc3RydWN0dXJlIGFuZCBkaXJlY3Rpb24gKHJlYWQvd3JpdGUpIGZvciBlYWNoIElP
Q1RMLg0KPj4gKyAqLw0KPj4gKyNkZWZpbmUgRFJNX0lPQ1RMX1FEQV9RVUVSWQkJRFJNX0lPUihE
Uk1fQ09NTUFORF9CQVNFICsgRFJNX1FEQV9RVUVSWSwgXA0KPj4gKwkJCQkJIHN0cnVjdCBkcm1f
cWRhX3F1ZXJ5KQ0KPj4gKw0KPj4gKy8qKg0KPj4gKyAqIHN0cnVjdCBkcm1fcWRhX3F1ZXJ5IC0g
RGV2aWNlIGluZm9ybWF0aW9uIHF1ZXJ5IHN0cnVjdHVyZQ0KPj4gKyAqIEBkc3BfbmFtZTogTmFt
ZSBvZiBEU1AgKGUuZy4sICJhZHNwIiwgImNkc3AiLCAiY2RzcDEiLCAiZ2RzcDAiLCAiZ2RzcDEi
KQ0KPj4gKyAqDQo+PiArICogVGhpcyBzdHJ1Y3R1cmUgaXMgdXNlZCB3aXRoIERSTV9JT0NUTF9R
REFfUVVFUlkgdG8gcXVlcnkgZGV2aWNlIHR5cGUsDQo+PiArICogYWxsb3dpbmcgdXNlcnNwYWNl
IHRvIGlkZW50aWZ5IHdoaWNoIERTUCBhIGRldmljZSBub2RlIHJlcHJlc2VudHMuIFRoZQ0KPj4g
KyAqIGtlcm5lbCBwcm92aWRlcyB0aGUgRFNQIG5hbWUgZGlyZWN0bHkgYXMgYSBudWxsLXRlcm1p
bmF0ZWQgc3RyaW5nLg0KPj4gKyAqLw0KPj4gK3N0cnVjdCBkcm1fcWRhX3F1ZXJ5IHsNCj4+ICsJ
X191OCBkc3BfbmFtZVsxNl07DQo+IA0KPiBBcmUgeW91IHN1cmUgdGhhdCB5b3Ugd2FudCB0byBx
dWVyeSBvbmx5IHRoZSBuYW1lPyBObyBleHRyYSBvcHRpb25zLCBubw0KPiBhdHRyaWJ1dGVzLCBu
byBoYXJkd2FyZSBjYXBhYmlsaXRpZXM/DQpUaGVyZSBhcmUgcGxhbnMgdG8gZXh0ZW5kIHRoaXMg
aW9jdGwgdG8gc3VwcG9ydCBEU1AgY2FwYWJpbGl0aWVzIGFuZCBmZXcNCm90aGVyIHF1ZXJ5IG9w
dGlvbnMsIGJ1dCBhcyBwZXIgbXkgdW5kZXJzdGFuZGluZywgSSBkb24ndCBuZWVkIHRvIGFkZA0K
cmVzZXJ2ZWQgSU9DVExzIGluIGRybSBjYXNlIGFuZCBJIGNhbiBleHRlbmQgaXQgaW4gZnV0dXJl
LiBQbGVhc2UNCmNvcnJlY3QgbWUgaWYgbXkgdW5kZXJzdGFuZGluZyBpcyB3cm9uZyBhbmQgSSBz
aG91bGQgYWRkIHJlc2VydmVkIGZpZWxkcy4NCg0KQ29weWluZyB0aGUgc3RhdGVtZW50IGZyb20g
dGhlIGRvY1sxXS4NCiJOb3RlIHRoYXQgZHJtX2lvY3RsKCkgYXV0b21hdGljYWxseSB6ZXJvLWV4
dGVuZHMgc3RydWN0dXJlcywgaGVuY2UgbWFrZQ0Kc3VyZSB5b3UgY2FuIGFkZCBtb3JlIHN0dWZm
IGF0IHRoZSBlbmQsIGkuZS4gZG9u4oCZdCBwdXQgYSB2YXJpYWJsZSBzaXplZA0KYXJyYXkgdGhl
cmUuIg0KDQpbMV0NCmh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjcuMC9ncHUvZHJt
LXVhcGkuaHRtbCNpb2N0bC1zdXBwb3J0LW9uLWRldmljZS1ub2Rlcz4NCg0KPj4gK307DQo+PiAr
DQo+PiArI2lmIGRlZmluZWQoX19jcGx1c3BsdXMpDQo+PiArfQ0KPj4gKyNlbmRpZg0KPj4gKw0K
Pj4gKyNlbmRpZiAvKiBfX1FEQV9BQ0NFTF9IX18gKi8NCj4+DQo+PiAtLSANCj4+IDIuMzQuMQ0K
Pj4NCj4+DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK

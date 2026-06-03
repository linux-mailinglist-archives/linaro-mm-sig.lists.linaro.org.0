Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2gWOJKpIKWpXTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:21:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EB9668B04
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:21:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=Y1HVuScF;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F55A40A86
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:21:13 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 12D313F949
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 05:28:21 +0000 (UTC)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 652Ko2Cl2884679
	for <linaro-mm-sig@lists.linaro.org>; Wed, 3 Jun 2026 05:28:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eXGduTCF9StMe/W/R1Pp9AQqLYpxIS0I136uVj0AkSI=; b=Y1HVuScF3MC8OaMd
	5TEcIIX7BNLmavVFc4+pBYhu5ujFcjxD20ZbENmoNIqDPk8KkAVWPrSOXgmCY1IB
	SwANjLXUXktvtjk1zO7BTaF8iMxeJ+tEkqf+cYkNufK+qEtzrXyPaxH7n3w9Mzdu
	6oY1Piv/HdG2i4bS9U9aPZh6X+lL+zEvQbFn9v4tWho7XbxyPbfsXLVcZBXV712Y
	l/uNR083CCin5IV0zKpoL6QFh5G7tvai3VbmiAfwNI7NfocCnyqBD4bmqisCdmnd
	jhgmgrhRfbLK9D7EcTMgvxEEdMa6yz5a6Qq1viwMcMjEuIsEvQs2Dhu1l/h/nVUE
	lG5/Qw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ehsu157g2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 05:28:20 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c8596e4272aso4236598a12.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jun 2026 22:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780464499; x=1781069299; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eXGduTCF9StMe/W/R1Pp9AQqLYpxIS0I136uVj0AkSI=;
        b=HZnAYrVtDZTxNlUtr23Oq2O2n4Y1AxgmzpSjK9twBsr22/nGJ/u5ykcxhb2fg/X9w2
         1Z4mMaQHT/ZG1YocxgjG4phOtcmktX/mYe9P0NVEUzHuynEPq3KQZHRsMS5XOQtEJW/6
         bNyWV8Kll6u4PA3uHLJdyLfOZsynytOHUYUyBi26CzNRWsswO2ZPGxI50n1qwFonLLOC
         mbJOAOOlZZ6HbVpnPyPU9jAh2/iZaxxmLDf4cQEi/rAJR4ZNeru7sbR/G7dqhun9edJf
         9gr0TPr7zIvi2a1K0847mn2DkoxK1g7BLuO4j/8jJvrgPmBr4fdQkqDpBDOYnf0CTmbr
         lxhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780464499; x=1781069299;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eXGduTCF9StMe/W/R1Pp9AQqLYpxIS0I136uVj0AkSI=;
        b=R76zYWJk2dAdoxbI4gJ9eMdxOau/CY3ESbDifNyhQAwGcsli/KkQX6RJH9C4RScfkw
         uC15KcyTjPvQ3v4EM6pMACkIqZmf62ALQfOHv8sxSOTZrFZVFgbzEE3LswdOj5Cc1PD6
         VnzzJCQs9UM1utaGFCaocj+Kb1J6hRkfz3KngyVuOTF9AgnewnF/a08rAb0pXHzx4OKz
         5JLath0sOc434QxxKfQJH3gk/KUPnejOveUk7Z3jii5ONOukZTr9f1eP9SVdxJC/dWym
         96LYFBEMC9K+f/LdKTh8+VQSnGy3+seaXyN4c8OrRJ+Fr+tnMOXrZd4hTCGCPfxLbBB9
         34yg==
X-Forwarded-Encrypted: i=1; AFNElJ9dw1NcPO0HpCYgIAwa3Cjxr+yNvDqM0oGz8BsOHCMkMXOkOO43Mu+R5wVYdqxErwgAr2ObiuImkeKAEKuF@lists.linaro.org
X-Gm-Message-State: AOJu0YybmsG/tBfbzs8A+8AqsvdaH8BAwbqJTFsub2AiPQARcVRibNlo
	BTREq2PV//U2uXtefc487JeBg7BJPBhzfbLzWSFFwf/9pX6i/2ZSC00G4aokKLqRdCJ6n5JLI29
	YFuf6hLwO0cFy1J3hXlCrst8PcIPBXo/KlXOcFENutFmlgwi9DI27m7ykSkQVUmNS7/WKow==
X-Gm-Gg: Acq92OGK/GV0zvgTxA+/JL6lSbxzh411n7IbIoVZw/Au6r8//pReBSFC+MVmkHBVzPc
	1A4XF1HyiVv2xlV3sMQAtUjmwF3IlXWBOJOfsouKsJmgAglCb83Kc4+EMx0MvGjPJO+NMKvsgTG
	AgdmyiZvLfBvxedG8gVelmsoZmkzZdgpShS1JbnzxUN2eGohBjlDQcF1/OpjyRCzdVww4Ppy+Cp
	ClH5zK1M9Tj6ggQ6yt8XpOFvAwCEQKmx+RPQe0ra7N5/NWobXEzk/wyUAAE9dWkYKrvJl8ZHX5L
	4Cir/lKSS7mvLDH7AUdlSLp4IV5KeeW40cvPnUGftQFS8OiNlB+hOo8FN2ELxhEJUv6soqK+oVX
	jDZuTHMJbc6AZSM1XgtrZMSETGhP2cjT3cXgqZ9dKctom5yg8NdpM1UuGtm23
X-Received: by 2002:a05:6a20:748a:b0:398:6ea8:21d8 with SMTP id adf61e73a8af0-3b49759433cmr2261526637.15.1780464499510;
        Tue, 02 Jun 2026 22:28:19 -0700 (PDT)
X-Received: by 2002:a05:6a20:748a:b0:398:6ea8:21d8 with SMTP id adf61e73a8af0-3b49759433cmr2261470637.15.1780464498951;
        Tue, 02 Jun 2026 22:28:18 -0700 (PDT)
Received: from [10.204.78.54] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85df0a624fsm986006a12.18.2026.06.02.22.28.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 22:28:18 -0700 (PDT)
Message-ID: <587b450c-c527-4c6a-b48b-8a7a266bd673@oss.qualcomm.com>
Date: Wed, 3 Jun 2026 10:58:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-4-b2d984c297f8@oss.qualcomm.com>
 <gnlpw4ijwtjv43nhcv5iirhjnuc7dntx5vucdrhnxeyznyxa5x@t65o5owldu5s>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <gnlpw4ijwtjv43nhcv5iirhjnuc7dntx5vucdrhnxeyznyxa5x@t65o5owldu5s>
X-Proofpoint-ORIG-GUID: r0e7YiG-VWOLdykg0Q_WCxDPjDCrZDvg
X-Proofpoint-GUID: r0e7YiG-VWOLdykg0Q_WCxDPjDCrZDvg
X-Authority-Analysis: v=2.4 cv=MKFQXsZl c=1 sm=1 tr=0 ts=6a1fbb74 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=fSmyMkXI2XJwL8L7xYwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDA0OSBTYWx0ZWRfX/9g8zwrRZjM6
 Wo8BY80KURhfZdbCAYuHET0Pmfd3qebb06OpnIgvFDY55Ai33WzasQmxOFtAGwgmlH/P1tVBx3v
 YB5129uzIf9Uxtb/UzZCHTsFXkYj/ZuimEqw6Sq2+pwD5PrSAGcf8gdbcOYUeg4DhZJWsBMsqxn
 DTRMPnCC5m7eL1RoEzCnEtdHSyYhRVdH+qXQ8u57F8ujK7oNDh1kLupMfWP/jaTX7+xo3DvjzBm
 n3T2SMjAj9K7bUeb1tZPAeXmJCzf2HEXGRH6deUO+fmrY1A+luUHJMzJLcmf+QSx4ty0DxNDmKa
 H/gAuvb8sJfKSyagRWN9fiQ+AjhAcc3uX3TQZX4JmrDyE6Cg0/OIO8LroBx75kX6sCUJpnKiKTu
 suerASwsQhd+FTR5nUWN5XBo9IN4ooCOJm+Ms9jKJ5uw1gpb4h96jEdJRa6iJrU+ZkJ7OexMPnr
 OppVzAmjZUVHdy0xRgA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_02,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606030049
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: W7QU2LYZLC57TCHDE4Z3G3JI3KAWSVSN
X-Message-ID-Hash: W7QU2LYZLC57TCHDE4Z3G3JI3KAWSVSN
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:20:20 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 04/15] accel/qda: Add compute bus for QDA context banks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W7QU2LYZLC57TCHDE4Z3G3JI3KAWSVSN/>
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
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 08EB9668B04

T24gMjAtMDUtMjAyNiAxOTo0OSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToNCj4gT24gVHVlLCBN
YXkgMTksIDIwMjYgYXQgMTE6NDU6NTRBTSArMDUzMCwgRWthbnNoIEd1cHRhIHZpYSBCNCBSZWxh
eSB3cm90ZToNCj4+IEZyb206IEVrYW5zaCBHdXB0YSA8ZWthbnNoLmd1cHRhQG9zcy5xdWFsY29t
bS5jb20+DQo+Pg0KPj4gSW50cm9kdWNlIGEgY3VzdG9tIHZpcnR1YWwgYnVzIChxZGEtY29tcHV0
ZS1jYikgZm9yIG1hbmFnaW5nIElPTU1VDQo+PiBjb250ZXh0IGJhbmsgKENCKSBkZXZpY2VzIHVz
ZWQgYnkgdGhlIFFEQSBkcml2ZXIuDQo+Pg0KPj4gSU9NTVUgY29udGV4dCBiYW5rcyBhcmUgc3lu
dGhldGljIGNvbnN0cnVjdHMg4oCUIHRoZXkgYXJlIG5vdCByZWFsDQo+PiBwbGF0Zm9ybSBkZXZp
Y2VzIGFuZCBkbyBub3QgYXBwZWFyIGFzIGNoaWxkcmVuIG9mIGEgcGxhdGZvcm0gYnVzIG5vZGUN
Cj4+IGluIHRoZSBkZXZpY2UgdHJlZS4gVXNpbmcgYSBwbGF0Zm9ybSBkcml2ZXIgdG8gcmVwcmVz
ZW50IHRoZW0gd2FzDQo+PiB0aGVyZWZvcmUgaW5jb3JyZWN0IGFuZCBpbnRyb2R1Y2VkIGEgcHJv
YmUtb3JkZXJpbmcgcmFjZTogZGV2aWNlIG5vZGVzDQo+PiB3ZXJlIGNyZWF0ZWQgYmVmb3JlIHRo
ZSBSUE1zZyBjaGFubmVsIHJlc291cmNlcyB3ZXJlIGZ1bGx5IGluaXRpYWxpemVkLA0KPj4gYW5k
IGJlY2F1c2UgcHJvYmUgcnVucyBhc3luY2hyb25vdXNseSwgdXNlci1zcGFjZSBjb3VsZCBvcGVu
IGEgQ0INCj4+IGRldmljZSBhbmQgYXR0ZW1wdCB0byBzdGFydCBhIHNlc3Npb24gYmVmb3JlIHRo
ZSB1bmRlcmx5aW5nIHRyYW5zcG9ydA0KPj4gd2FzIHJlYWR5Lg0KPj4NCj4+IFRoZSBxZGEtY29t
cHV0ZS1jYiBidXMgc29sdmVzIHRoaXMgYnkgYWxsb3dpbmcgdGhlIG1haW4gUURBIGRyaXZlciB0
bw0KPj4gY3JlYXRlIENCIGRldmljZXMgZXhwbGljaXRseSBhbmQgdW5kZXIgaXRzIG93biBjb250
cm9sLCBtYWtpbmcgdGhlaXINCj4+IGxpZmV0aW1lIHN0cmljdGx5IHN1Ym9yZGluYXRlIHRvIHRo
ZSBwYXJlbnQgcWRhX2Rldi4gVGhlIGJ1cyBwcm92aWRlcw0KPj4gYSBkbWFfY29uZmlndXJlIGNh
bGxiYWNrIHRoYXQgY2FsbHMgb2ZfZG1hX2NvbmZpZ3VyZSgpIHNvIHRoYXQgZWFjaCBDQg0KPj4g
ZGV2aWNlIGdldHMgaXRzIG93biBJT01NVSBkb21haW4gZGVyaXZlZCBmcm9tIGl0cyBkZXZpY2Ut
dHJlZSBub2RlLA0KPj4gZW5hYmxpbmcgcGVyLXNlc3Npb24gbWVtb3J5IGlzb2xhdGlvbi4NCj4+
DQo+PiBUaGUgYnVzIHR5cGUgYW5kIHRoZSBDQiBkZXZpY2UgY29uc3RydWN0b3IgKGNyZWF0ZV9x
ZGFfY2JfZGV2aWNlKSBhcmUNCj4+IGV4cG9ydGVkIGZvciB1c2UgYnkgdGhlIFFEQSBtZW1vcnkg
bWFuYWdlci4NCj4+DQo+PiBBIGhpZGRlbiBLY29uZmlnIHN5bWJvbCAoRFJNX0FDQ0VMX1FEQV9D
T01QVVRFX0JVUykgaXMgaW50cm9kdWNlZCBhbmQNCj4+IGF1dG9tYXRpY2FsbHkgc2VsZWN0ZWQg
YnkgRFJNX0FDQ0VMX1FEQSBzbyB0aGF0IHRoZSBidXMgaW5pdGlhbGlzYXRpb24NCj4+IHJ1bnMg
dmlhIHBvc3Rjb3JlX2luaXRjYWxsIGJlZm9yZSBhbnkgUURBIGRldmljZSBwcm9iZXMuDQo+Pg0K
Pj4gQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtNC02LXNvbm5ldA0KPj4gU2lnbmVkLW9mZi1i
eTogRWthbnNoIEd1cHRhIDxla2Fuc2guZ3VwdGFAb3NzLnF1YWxjb21tLmNvbT4NCj4+IC0tLQ0K
Pj4gIGRyaXZlcnMvYWNjZWwvTWFrZWZpbGUgICAgICAgICAgICAgIHwgIDEgKw0KPj4gIGRyaXZl
cnMvYWNjZWwvcWRhL0tjb25maWcgICAgICAgICAgIHwgIDQgKysrDQo+PiAgZHJpdmVycy9hY2Nl
bC9xZGEvTWFrZWZpbGUgICAgICAgICAgfCAgMiArKw0KPj4gIGRyaXZlcnMvYWNjZWwvcWRhL3Fk
YV9jb21wdXRlX2J1cy5jIHwgNjggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kw0KPj4gIGluY2x1ZGUvbGludXgvcWRhX2NvbXB1dGVfYnVzLmggICAgIHwgMzIgKysrKysrKysr
KysrKysrKysNCj4+ICA1IGZpbGVzIGNoYW5nZWQsIDEwNyBpbnNlcnRpb25zKCspDQo+Pg0KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNjZWwvTWFrZWZpbGUgYi9kcml2ZXJzL2FjY2VsL01ha2Vm
aWxlDQo+PiBpbmRleCA1OGMwOGRkNWYzODkuLjllZDg0M2NkMjkzZiAxMDA2NDQNCj4+IC0tLSBh
L2RyaXZlcnMvYWNjZWwvTWFrZWZpbGUNCj4+ICsrKyBiL2RyaXZlcnMvYWNjZWwvTWFrZWZpbGUN
Cj4+IEBAIC02LDQgKzYsNSBAQCBvYmotJChDT05GSUdfRFJNX0FDQ0VMX0hBQkFOQUxBQlMpCSs9
IGhhYmFuYWxhYnMvDQo+PiAgb2JqLSQoQ09ORklHX0RSTV9BQ0NFTF9JVlBVKQkJKz0gaXZwdS8N
Cj4+ICBvYmotJChDT05GSUdfRFJNX0FDQ0VMX1FBSUMpCQkrPSBxYWljLw0KPj4gIG9iai0kKENP
TkZJR19EUk1fQUNDRUxfUURBKQkJKz0gcWRhLw0KPj4gK29iai0kKENPTkZJR19EUk1fQUNDRUxf
UURBX0NPTVBVVEVfQlVTKSArPSBxZGEvDQo+IA0KPiBVZ2guIFRoZSBwcmV2aW91cyBsaW5lIHNo
b3VsZCBiZSBlbm91Z2ggKGJ1dCBkb24ndCB0cnVzdCBtZSkuDQpJIHdhcyBzZWVpbmcgYnVpbGQg
ZmFpbHVyZXMgaWYgSSBkb24ndCBhZGQgdGhpcy4gVG9vayBpdCBhcyBhIHJlZmVyZW5jZQ0KZnJv
bSBob3N0MXggZHJpdmVyIGFuZCByZWNlbnQgaXJpcyBwYXRjaC4+DQo+PiAgb2JqLSQoQ09ORklH
X0RSTV9BQ0NFTF9ST0NLRVQpCQkrPSByb2NrZXQvDQo+PiBcIE5vIG5ld2xpbmUgYXQgZW5kIG9m
IGZpbGUNCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL3FkYS9LY29uZmlnIGIvZHJpdmVy
cy9hY2NlbC9xZGEvS2NvbmZpZw0KPj4gaW5kZXggNDg0ZDIxZmYxYjU1Li4yYTYxYTRkZGEwNTQg
MTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2FjY2VsL3FkYS9LY29uZmlnDQo+PiArKysgYi9kcml2
ZXJzL2FjY2VsL3FkYS9LY29uZmlnDQo+PiBAQCAtMywxMSArMywxNSBAQA0KPj4gICMgUXVhbGNv
bW0gRFNQIGFjY2VsZXJhdG9yIGRyaXZlcg0KPj4gICMNCj4+ICANCj4+ICtjb25maWcgRFJNX0FD
Q0VMX1FEQV9DT01QVVRFX0JVUw0KPj4gKwlib29sDQo+PiArDQo+PiAgY29uZmlnIERSTV9BQ0NF
TF9RREENCj4+ICAJdHJpc3RhdGUgIlF1YWxjb21tIERTUCBhY2NlbGVyYXRvciINCj4+ICAJZGVw
ZW5kcyBvbiBEUk1fQUNDRUwNCj4+ICAJZGVwZW5kcyBvbiBBUkNIX1FDT00gfHwgQ09NUElMRV9U
RVNUDQo+PiAgCWRlcGVuZHMgb24gUlBNU0cNCj4+ICsJc2VsZWN0IERSTV9BQ0NFTF9RREFfQ09N
UFVURV9CVVMNCj4+ICAJaGVscA0KPj4gIAkgIEVuYWJsZXMgdGhlIERSTS1iYXNlZCBhY2NlbGVy
YXRvciBkcml2ZXIgZm9yIFF1YWxjb21tJ3MgSGV4YWdvbiBEU1BzLg0KPj4gIAkgIFRoaXMgZHJp
dmVyIHByb3ZpZGVzIGEgc3RhbmRhcmRpemVkIGludGVyZmFjZSBmb3Igb2ZmbG9hZGluZyBjb21w
dXRhdGlvbmFsDQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY2NlbC9xZGEvTWFrZWZpbGUgYi9k
cml2ZXJzL2FjY2VsL3FkYS9NYWtlZmlsZQ0KPj4gaW5kZXggZGJlODA5MDY3YThiLi40MjQxNzZm
NjUyYTUgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2FjY2VsL3FkYS9NYWtlZmlsZQ0KPj4gKysr
IGIvZHJpdmVycy9hY2NlbC9xZGEvTWFrZWZpbGUNCj4+IEBAIC04LDMgKzgsNSBAQCBvYmotJChD
T05GSUdfRFJNX0FDQ0VMX1FEQSkJOj0gcWRhLm8NCj4+ICBxZGEteSA6PSBcDQo+PiAgCXFkYV9k
cnYubyBcDQo+PiAgCXFkYV9ycG1zZy5vDQo+PiArDQo+PiArb2JqLSQoQ09ORklHX0RSTV9BQ0NF
TF9RREFfQ09NUFVURV9CVVMpICs9IHFkYV9jb21wdXRlX2J1cy5vDQo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9hY2NlbC9xZGEvcWRhX2NvbXB1dGVfYnVzLmMgYi9kcml2ZXJzL2FjY2VsL3FkYS9x
ZGFfY29tcHV0ZV9idXMuYw0KPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4+IGluZGV4IDAwMDAw
MDAwMDAwMC4uYzU5ZDk3N2U5MjRkDQo+PiAtLS0gL2Rldi9udWxsDQo+PiArKysgYi9kcml2ZXJz
L2FjY2VsL3FkYS9xZGFfY29tcHV0ZV9idXMuYw0KPj4gQEAgLTAsMCArMSw2OCBAQA0KPj4gKy8v
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkNCj4+ICsvLyBDb3B5cmlnaHQg
KGMpIFF1YWxjb21tIFRlY2hub2xvZ2llcywgSW5jLiBhbmQvb3IgaXRzIHN1YnNpZGlhcmllcy4N
Cj4+ICsjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+DQo+PiArI2luY2x1ZGUgPGxpbnV4L2luaXQu
aD4NCj4+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4NCj4+ICsjaW5jbHVkZSA8bGludXgvb2ZfZGV2
aWNlLmg+DQo+PiArI2luY2x1ZGUgPGxpbnV4L3FkYV9jb21wdXRlX2J1cy5oPg0KPj4gKyNpbmNs
dWRlIDxsaW51eC9zbGFiLmg+DQo+PiArDQo+PiArc3RhdGljIGludCBxZGFfY2JfYnVzX2RtYV9j
b25maWd1cmUoc3RydWN0IGRldmljZSAqZGV2KQ0KPj4gK3sNCj4+ICsJcmV0dXJuIG9mX2RtYV9j
b25maWd1cmUoZGV2LCBkZXYtPm9mX25vZGUsIHRydWUpOw0KPj4gK30NCj4+ICsNCj4+ICtjb25z
dCBzdHJ1Y3QgYnVzX3R5cGUgcWRhX2NiX2J1c190eXBlID0gew0KPj4gKwkubmFtZSA9ICJxZGEt
Y29tcHV0ZS1jYiIsDQo+PiArCS5kbWFfY29uZmlndXJlID0gcWRhX2NiX2J1c19kbWFfY29uZmln
dXJlLA0KPj4gK307DQo+PiArRVhQT1JUX1NZTUJPTF9HUEwocWRhX2NiX2J1c190eXBlKTsNCj4+
ICsNCj4+ICtzdGF0aWMgdm9pZCByZWxlYXNlX3FkYV9jYl9kZXZpY2Uoc3RydWN0IGRldmljZSAq
ZGV2KQ0KPj4gK3sNCj4+ICsJb2Zfbm9kZV9wdXQoZGV2LT5vZl9ub2RlKTsNCj4+ICsJa2ZyZWUo
ZGV2KTsNCj4+ICt9DQo+PiArDQo+PiArc3RydWN0IGRldmljZSAqY3JlYXRlX3FkYV9jYl9kZXZp
Y2Uoc3RydWN0IGRldmljZSAqcGFyZW50X2RldmljZSwgY29uc3QgY2hhciAqbmFtZSwNCj4+ICsJ
CQkJICAgIHU2NCBkbWFfbWFzaywgc3RydWN0IGRldmljZV9ub2RlICpvZl9ub2RlKQ0KPj4gK3sN
Cj4+ICsJc3RydWN0IGRldmljZSAqZGV2Ow0KPj4gKwlpbnQgcmV0Ow0KPj4gKw0KPj4gKwlkZXYg
PSBremFsbG9jX29iaigqZGV2KTsNCj4+ICsJaWYgKCFkZXYpDQo+PiArCQlyZXR1cm4gRVJSX1BU
UigtRU5PTUVNKTsNCj4+ICsNCj4+ICsJZGV2LT5yZWxlYXNlID0gcmVsZWFzZV9xZGFfY2JfZGV2
aWNlOw0KPj4gKwlkZXYtPmJ1cyA9ICZxZGFfY2JfYnVzX3R5cGU7DQo+PiArCWRldi0+cGFyZW50
ID0gcGFyZW50X2RldmljZTsNCj4+ICsJZGV2LT5jb2hlcmVudF9kbWFfbWFzayA9IGRtYV9tYXNr
Ow0KPj4gKwlkZXYtPmRtYV9tYXNrID0gJmRldi0+Y29oZXJlbnRfZG1hX21hc2s7DQo+PiArCWRl
di0+b2Zfbm9kZSA9IG9mX25vZGVfZ2V0KG9mX25vZGUpOw0KPj4gKw0KPj4gKwlkZXZfc2V0X25h
bWUoZGV2LCAiJXMiLCBuYW1lKTsNCj4+ICsNCj4+ICsJcmV0ID0gZGV2aWNlX3JlZ2lzdGVyKGRl
dik7DQo+PiArCWlmIChyZXQpIHsNCj4+ICsJCXB1dF9kZXZpY2UoZGV2KTsNCj4+ICsJCXJldHVy
biBFUlJfUFRSKHJldCk7DQo+PiArCX0NCj4+ICsNCj4+ICsJcmV0dXJuIGRldjsNCj4+ICt9DQo+
PiArRVhQT1JUX1NZTUJPTF9HUEwoY3JlYXRlX3FkYV9jYl9kZXZpY2UpOw0KPj4gKw0KPj4gK3N0
YXRpYyBpbnQgX19pbml0IHFkYV9jYl9idXNfaW5pdCh2b2lkKQ0KPj4gK3sNCj4+ICsJaW50IGVy
cjsNCj4+ICsNCj4+ICsJZXJyID0gYnVzX3JlZ2lzdGVyKCZxZGFfY2JfYnVzX3R5cGUpOw0KPj4g
KwlpZiAoZXJyIDwgMCkgew0KPj4gKwkJcHJfZXJyKCJxZGEtY29tcHV0ZS1jYiBidXMgcmVnaXN0
cmF0aW9uIGZhaWxlZDogJWRcbiIsIGVycik7DQo+PiArCQlyZXR1cm4gZXJyOw0KPj4gKwl9DQo+
PiArCXJldHVybiAwOw0KPj4gK30NCj4+ICsNCj4+ICtwb3N0Y29yZV9pbml0Y2FsbChxZGFfY2Jf
YnVzX2luaXQpOw0KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcWRhX2NvbXB1dGVfYnVz
LmggYi9pbmNsdWRlL2xpbnV4L3FkYV9jb21wdXRlX2J1cy5oDQo+PiBuZXcgZmlsZSBtb2RlIDEw
MDY0NA0KPj4gaW5kZXggMDAwMDAwMDAwMDAwLi45MGJmMjQ4YzcyODUNCj4+IC0tLSAvZGV2L251
bGwNCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvcWRhX2NvbXB1dGVfYnVzLmgNCj4+IEBAIC0wLDAg
KzEsMzIgQEANCj4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICov
DQo+PiArLyoNCj4+ICsgKiBDb3B5cmlnaHQgKGMpIFF1YWxjb21tIFRlY2hub2xvZ2llcywgSW5j
LiBhbmQvb3IgaXRzIHN1YnNpZGlhcmllcy4NCj4+ICsgKi8NCj4+ICsNCj4+ICsjaWZuZGVmIF9f
UURBX0NPTVBVVEVfQlVTX0hfXw0KPj4gKyNkZWZpbmUgX19RREFfQ09NUFVURV9CVVNfSF9fDQo+
PiArDQo+PiArI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPg0KPj4gKw0KPj4gKy8qDQo+PiArICog
Q3VzdG9tIGJ1cyB0eXBlIGZvciBRREEgY29tcHV0ZSBjb250ZXh0IGJhbmsgKENCKSBkZXZpY2Vz
DQo+PiArICoNCj4+ICsgKiBUaGlzIGJ1cyB0eXBlIGlzIHVzZWQgZm9yIG1hbnVhbGx5IGNyZWF0
ZWQgQ0IgZGV2aWNlcyB0aGF0IHJlcHJlc2VudA0KPj4gKyAqIElPTU1VIGNvbnRleHQgYmFua3Mu
IFRoZSBjdXN0b20gYnVzIGFsbG93cyBwcm9wZXIgSU9NTVUgY29uZmlndXJhdGlvbg0KPj4gKyAq
IGFuZCBkZXZpY2UgbWFuYWdlbWVudCBmb3IgdGhlc2UgdmlydHVhbCBkZXZpY2VzLg0KPj4gKyAq
Lw0KPj4gKyNpZmRlZiBDT05GSUdfRFJNX0FDQ0VMX1FEQV9DT01QVVRFX0JVUw0KPj4gK2V4dGVy
biBjb25zdCBzdHJ1Y3QgYnVzX3R5cGUgcWRhX2NiX2J1c190eXBlOw0KPj4gKw0KPj4gK3N0cnVj
dCBkZXZpY2UgKmNyZWF0ZV9xZGFfY2JfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKnBhcmVudF9kZXZp
Y2UsIGNvbnN0IGNoYXIgKm5hbWUsDQo+PiArCQkJCSAgICB1NjQgZG1hX21hc2ssIHN0cnVjdCBk
ZXZpY2Vfbm9kZSAqb2Zfbm9kZSk7DQo+PiArI2Vsc2UNCj4+ICtzdGF0aWMgaW5saW5lIHN0cnVj
dCBkZXZpY2UgKmNyZWF0ZV9xZGFfY2JfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKnBhcmVudF9kZXZp
Y2UsDQo+PiArCQkJCQkJICBjb25zdCBjaGFyICpuYW1lLCB1NjQgZG1hX21hc2ssDQo+PiArCQkJ
CQkJICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm9mX25vZGUpDQo+PiArew0KPj4gKwlyZXR1cm4gRVJS
X1BUUigtRU5PREVWKTsNCj4+ICt9DQo+PiArI2VuZGlmDQo+PiArDQo+PiArI2VuZGlmIC8qIF9f
UURBX0NPTVBVVEVfQlVTX0hfXyAqLw0KPj4NCj4+IC0tIA0KPj4gMi4zNC4xDQo+Pg0KPj4NCj4g
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=

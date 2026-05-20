Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGunBVbBDWr32wUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:12:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B6C58F612
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 16:12:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84D3540980
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 14:12:36 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 532C84095C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:12:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=cSDgISG+;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=BvWD+XvO;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KE2KUK826517
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:12:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fjc/US0eOmCaq8NJVQ5/t7CluwSHuURJ7uN+zaRxrGg=; b=cSDgISG+AOhCmG7R
	DKix72vBfFMmRS7S5JLtuxJgxQ5rA/o91om6pqfXovLaO82aNU3pJLEx7Gv0w3Ug
	qklISnqIKD1ip2d4rvBvU+6XC7jC9BWp+gRYSFso1oPY6GoHyKUX47jeqU9hr37g
	8pWE99iqikCzwkoGHLhOJd11rwpLAsHX9X/w7Lek/kn7r5oD+xRa0sJXoOVy/WnM
	NV+qkDCcoAS8bHvgs08mfpJZKKDCqHndlwYjJWsFwgx1my1puF+DciEmUIXIs2rN
	km8/aItafF6gKi9C0DxV81h2ZXVjN04qiOwEdHsHyj4VN2y+BPsuO4z755cJEnAz
	b6Bgdg==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9ecag187-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 14:12:25 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-57539ff73cbso11207765e0c.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 07:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779286344; x=1779891144; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Fjc/US0eOmCaq8NJVQ5/t7CluwSHuURJ7uN+zaRxrGg=;
        b=BvWD+XvO2/PLbQNwlCzNdzS5zBLEv+SiKueOpf4eHvn5mQK/xK+ugud60qbomhtGO4
         YN8HUX+rWhn78dXgrjmVACraFM7tbUav6Q1wO22jSWSv2z5Jav6KkAN/0PHMBQAC3rqG
         9QILc7hSNtTQtRZbb9NHsNlZ0S5CnR3jGAxHOTZTO8wqYY+zqJBc8QjZI7klFSRfmuaO
         b28DlMLsBxXjWOeJb7lCo1tLPhZuNRZA20wDBsjuyRs30j0LqvDiBN67D46MoHxa6BwL
         IHy7vL4SFIZqjicVSwu34GgjygXIMu8DIo3upzi5c5OFcDBubWI3er0yru0w7tFQZq7P
         jwjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779286344; x=1779891144;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fjc/US0eOmCaq8NJVQ5/t7CluwSHuURJ7uN+zaRxrGg=;
        b=pl+9uDWKXkKpxsG5JvDPSJhZjrqq8g/7/GVSvV5hs5GrBA5cncpwUOE6EnCLmdSRAU
         a9hg3HnUvIX6hJfrrVXibueRIVyzl4lohZzcUIef19X+JJeU1DN2XkNdFe7BLZu88V2q
         mktWfXZd8Bo0CV7gPtSybRQCQCigBYLukWtVYcJs4ZS1VGZ0ErKr1umLnWIcR7aRue1A
         7yDwbI6YhLfw1Ccmz9uiO0I4Bw/2yC8s3xO+kWUEk/qQxcrRZzAOdITdvCbzgN/HJ+0l
         z0iv5bLBALaKypKJ9pnm+mJ5RL7LLhZFTQDR+82+91xiwTc5qh0wevyZdLdEDbPQPQcC
         LPzQ==
X-Forwarded-Encrypted: i=1; AFNElJ/2LJDBneWNbMMSu1i1J8Z20xO7C9IioGG4T2NFC/YRAcftCeXa3VzhzQWk6X2n4WHZDSeFcGQ/UCMCv/B2@lists.linaro.org
X-Gm-Message-State: AOJu0Ywr2yqNqiODCl7ZZVD6XGyGOPSTTpUqLUyAH2kz/RtmjMsomWvJ
	I6GR42sXkY6/E1BjJaX9zGXBm3iYwDaBxhct/06WbtEaVLZ9Yf55iZKdwyxm4OVCe76B+QMKrVl
	hLioxJNUQ05Zh2mfB9VoMnC9bB/rbmSxFVHuqD8AegrdO6xcpUTH130n/pTV/ELD/wVZGaA==
X-Gm-Gg: Acq92OE7sbjjJiftG5+CrTKimxn6E/lUdcek0gzC8B8aCzItCmcfbVZhVvFdgZRwk0W
	JoVdZDd/pBCOsuxBF/QGA72vKlOdtm6ZMuGH46NP6iMKcTDqOFCbKEXa1wHsc95G6OJwnPrkw5K
	p9W5HvHkBl+0SOSLh0zxc+2XDLVb/NoV2/Z9/gJ7x3nH0XlXVCxhgyYf3sEtjlxYbDlmLgKFoPJ
	iJiselHr2DrDwEY8hAnAGpPfzvvRCjwhIup/8xY8zveJBge2DLVpw3Hs6eCs8RS0LUjTclLcLk6
	ZQuxm3u4wjFTFCxP4kyIGeguzStBw/1HdH3RJWMqoENVCp6SgIl+hzIfbJ5fqPHM+Rhavji+yOD
	gZILmSetkdLY74QYhMQRCXy/AE24VhZwhnW9G2hD8qdtrW5L+GwOOrJvEcQkqQKrSkXbU+/lXdJ
	EeJNpPdbNhSDkST6POjM+mJvbMeUWHmmDVe9k=
X-Received: by 2002:a05:6122:2676:b0:57d:6d56:11ff with SMTP id 71dfb90a1353d-57d6d56133cmr2372257e0c.9.1779286343928;
        Wed, 20 May 2026 07:12:23 -0700 (PDT)
X-Received: by 2002:a05:6122:2676:b0:57d:6d56:11ff with SMTP id 71dfb90a1353d-57d6d56133cmr2372208e0c.9.1779286343311;
        Wed, 20 May 2026 07:12:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a9164cec52sm4960154e87.72.2026.05.20.07.12.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 07:12:22 -0700 (PDT)
Date: Wed, 20 May 2026 17:12:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: ekansh.gupta@oss.qualcomm.com
Message-ID: <paiohsil5pmvm7cf6jxrhaj2225bgvlt3scrag4x6gbkyosow5@l4tbakbnxcvo>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-2-b2d984c297f8@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260519-qda-series-v1-2-b2d984c297f8@oss.qualcomm.com>
X-Proofpoint-GUID: x4oBsjiMIWXXTOWPtXzruy21LVWH5jix
X-Authority-Analysis: v=2.4 cv=WqMb99fv c=1 sm=1 tr=0 ts=6a0dc149 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=x97SpM1XRKmEcGPL2ZkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIwMDEzOCBTYWx0ZWRfX8mPsoFeOQIV2
 qz+VhnBE86k67XJrkeYcSjCi/Ifpkd36i4j0863I6Cvhg804Ev/8GroPF4+viu3boUaElz7m8kn
 V3TS71WsTalkMoRUble0fu191BHcdJlyF6vZ91hY0UpGBEe88xsC0liWgkH5lYk2tjSj8Y8csla
 D9Xv8Q+2UcXu2P88OplnIjMeH0MQXksA3SX+GskAZiT/8PZ2CbE+1M2LBaZ34AYad58fFUFXex1
 pry6BDEPSr96WoZUIsERI/EsSzIdTMRwjWCpyNTItbSqNQZ9spl2ERZFVqG/bMDcyNdTYOvPi9O
 z3lJ0Fj8HAgXX57uh0XGeh/cjnqY5AdzmudFNJvpWcxUk8e9d5aIOPW4xEs5Z96vaHNNxuZz/Vr
 qMA01+NND0HIs6ieXfk/xLGFQy+3nQpKRMWAkp1LBrU/LI/W/iy/w8nqL7oFGBciVHRjNsK0TTA
 N+TJRGi03UkPqGNcIMg==
X-Proofpoint-ORIG-GUID: x4oBsjiMIWXXTOWPtXzruy21LVWH5jix
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 adultscore=0 malwarescore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605200138
X-Spamd-Bar: ---
Message-ID-Hash: OEIS3VRTQLGTP2MXLA4JV4SQEFX2G4CJ
X-Message-ID-Hash: OEIS3VRTQLGTP2MXLA4JV4SQEFX2G4CJ
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/15] accel/qda: Add QDA driver documentation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OEIS3VRTQLGTP2MXLA4JV4SQEFX2G4CJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,foo:url]
X-Rspamd-Queue-Id: 89B6C58F612
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMTE6NDU6NTJBTSArMDUzMCwgRWthbnNoIEd1cHRhIHZp
YSBCNCBSZWxheSB3cm90ZToNCj4gRnJvbTogRWthbnNoIEd1cHRhIDxla2Fuc2guZ3VwdGFAb3Nz
LnF1YWxjb21tLmNvbT4NCj4gDQo+IEFkZCBkb2N1bWVudGF0aW9uIGZvciB0aGUgUXVhbGNvbW0g
RFNQIEFjY2VsZXJhdG9yIChRREEpIGRyaXZlciB1bmRlcg0KPiBEb2N1bWVudGF0aW9uL2FjY2Vs
L3FkYS8uIFRoZSBkb2N1bWVudGF0aW9uIGNvdmVycyB0aGUgZHJpdmVyDQo+IGFyY2hpdGVjdHVy
ZSwgR0VNLWJhc2VkIGJ1ZmZlciBtYW5hZ2VtZW50LCBJT01NVSBjb250ZXh0IGJhbmsNCj4gaXNv
bGF0aW9uLCBhbmQgdGhlIFJQTXNnIHRyYW5zcG9ydCBsYXllci4NCj4gDQo+IFRoZSB1c2VyLXNw
YWNlIEFQSSBzZWN0aW9uIGRlc2NyaWJlcyB0aGUgRFJNIElPQ1RMcyBmb3Igc2Vzc2lvbg0KPiBt
YW5hZ2VtZW50LCBHRU0gYnVmZmVyIGFsbG9jYXRpb24sIGFuZCByZW1vdGUgcHJvY2VkdXJlIGlu
dm9jYXRpb24gdmlhDQo+IHRoZSBGYXN0UlBDIHByb3RvY29sLCBhbG9uZyB3aXRoIGEgdHlwaWNh
bCBhcHBsaWNhdGlvbiBsaWZlY3ljbGUNCj4gZXhhbXBsZS4gU2VjdGlvbnMgZm9yIGR5bmFtaWMg
ZGVidWcgYW5kIGJhc2ljIHRlc3RpbmcgYXJlIGFsc28NCj4gaW5jbHVkZWQuDQo+IA0KPiBXaXJl
IHRoZSBuZXcgZG9jdW1lbnRhdGlvbiBpbnRvIHRoZSBDb21wdXRlIEFjY2VsZXJhdG9ycyBpbmRl
eCBhdA0KPiBEb2N1bWVudGF0aW9uL2FjY2VsL2luZGV4LnJzdC4NCj4gDQo+IEFzc2lzdGVkLWJ5
OiBDbGF1ZGU6Y2xhdWRlLTQtNi1zb25uZXQNCj4gU2lnbmVkLW9mZi1ieTogRWthbnNoIEd1cHRh
IDxla2Fuc2guZ3VwdGFAb3NzLnF1YWxjb21tLmNvbT4NCj4gLS0tDQo+ICBEb2N1bWVudGF0aW9u
L2FjY2VsL2luZGV4LnJzdCAgICAgfCAgIDEgKw0KPiAgRG9jdW1lbnRhdGlvbi9hY2NlbC9xZGEv
aW5kZXgucnN0IHwgIDEzICsrKysNCj4gIERvY3VtZW50YXRpb24vYWNjZWwvcWRhL3FkYS5yc3Qg
ICB8IDE0NiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiAgMyBmaWxl
cyBjaGFuZ2VkLCAxNjAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vYWNjZWwvaW5kZXgucnN0IGIvRG9jdW1lbnRhdGlvbi9hY2NlbC9pbmRleC5yc3QNCj4g
aW5kZXggY2JjN2Q0YzM4NzZhLi41OTAxZWE3Zjc4NGMgMTAwNjQ0DQo+IC0tLSBhL0RvY3VtZW50
YXRpb24vYWNjZWwvaW5kZXgucnN0DQo+ICsrKyBiL0RvY3VtZW50YXRpb24vYWNjZWwvaW5kZXgu
cnN0DQo+IEBAIC0xMCw0ICsxMCw1IEBAIENvbXB1dGUgQWNjZWxlcmF0b3JzDQo+ICAgICBpbnRy
b2R1Y3Rpb24NCj4gICAgIGFtZHhkbmEvaW5kZXgNCj4gICAgIHFhaWMvaW5kZXgNCj4gKyAgIHFk
YS9pbmRleA0KPiAgICAgcm9ja2V0L2luZGV4DQo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2FjY2VsL3FkYS9pbmRleC5yc3QgYi9Eb2N1bWVudGF0aW9uL2FjY2VsL3FkYS9pbmRleC5yc3QN
Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAwLi4wMTM0MDBjZjlj
MjUNCj4gLS0tIC9kZXYvbnVsbA0KPiArKysgYi9Eb2N1bWVudGF0aW9uL2FjY2VsL3FkYS9pbmRl
eC5yc3QNCj4gQEAgLTAsMCArMSwxMyBAQA0KPiArLi4gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAtb25seQ0KPiArDQo+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
DQo+ICthY2NlbC9xZGEgUXVhbGNvbW0gRFNQIEFjY2VsZXJhdG9yDQo+ICs9PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09DQo+ICsNCj4gK1RoZSBRREEgZHJpdmVyIHByb3ZpZGVzIGEg
RFJNIGFjY2VsIGJhc2VkIGludGVyZmFjZSBmb3IgUXVhbGNvbW0gRFNQIG9mZmxvYWQuDQo+ICtJ
dCB1c2VzIHRoZSBGYXN0UlBDIHByb3RvY29sIGFuZCBpbnRlZ3JhdGVzIHdpdGggRFJNIGFuZCBH
RU0gaW5mcmFzdHJ1Y3R1cmUNCj4gK2ZvciBkZXZpY2UgYW5kIGJ1ZmZlciBtYW5hZ2VtZW50Lg0K
PiArDQo+ICsuLiB0b2N0cmVlOjoNCj4gKw0KPiArICAgcWRhDQo+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2FjY2VsL3FkYS9xZGEucnN0IGIvRG9jdW1lbnRhdGlvbi9hY2NlbC9xZGEvcWRh
LnJzdA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAuLjlmNDlh
ZjZlNmFjYw0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL0RvY3VtZW50YXRpb24vYWNjZWwvcWRh
L3FkYS5yc3QNCj4gQEAgLTAsMCArMSwxNDYgQEANCj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBHUEwtMi4wLW9ubHkNCj4gKw0KPiArPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PQ0KPiArUXVhbGNvbW0gRFNQIEFjY2VsZXJhdG9yIChRREEpIERyaXZlcg0KPiArPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiArDQo+ICtJbnRyb2R1Y3Rpb24N
Cj4gKz09PT09PT09PT09PQ0KPiArDQo+ICtUaGUgUURBIGRyaXZlciBpcyBhIERSTSBhY2NlbCBk
cml2ZXIgZm9yIFF1YWxjb21tJ3MgRFNQcy4gSXQgcHJvdmlkZXMgYQ0KPiArRFJNIGFjY2VsIGJh
c2VkIGludGVyZmFjZSBmb3IgUXVhbGNvbW0gRFNQIG9mZmxvYWQsIHN1cHBvcnRpbmcgd29ya2xv
YWRzDQo+ICtzdWNoIGFzIEFJIGluZmVyZW5jZSwgY29tcHV0ZXIgdmlzaW9uLCBhdWRpbyBwcm9j
ZXNzaW5nLCBhbmQgc2Vuc29yIG9mZmxvYWQNCj4gK29uIFF1YWxjb21tIFNvQ3MuIEl0IHVzZXMg
dGhlIEZhc3RSUEMgcHJvdG9jb2wgYW5kIGludGVncmF0ZXMgd2l0aCBEUk0gYW5kDQo+ICtHRU0g
aW5mcmFzdHJ1Y3R1cmUgZm9yIGRldmljZSBhbmQgYnVmZmVyIG1hbmFnZW1lbnQuDQo+ICsNCj4g
K0tleSBGZWF0dXJlcw0KPiArPT09PT09PT09PT09DQo+ICsNCj4gKyogICAqKkRSTSBhY2NlbCBJ
bnRlcmZhY2UqKjogRXhwb3NlcyBhIHN0YW5kYXJkIGNoYXJhY3RlciBkZXZpY2Ugbm9kZQ0KPiAr
ICAgIChlLmcuLCBgYC9kZXYvYWNjZWwvYWNjZWwwYGApIHZpYSB0aGUgRFJNIGFjY2VsIHN1YnN5
c3RlbS4NCj4gKyogICAqKkZhc3RSUEMgUHJvdG9jb2wqKjogSW1wbGVtZW50cyB0aGUgRmFzdFJQ
QyBwcm90b2NvbCBmb3IgY29tbXVuaWNhdGlvbg0KPiArICAgIGJldHdlZW4gdGhlIGFwcGxpY2F0
aW9uIHByb2Nlc3NvciBhbmQgdGhlIERTUC4NCj4gKyogICAqKkdFTSBCdWZmZXIgTWFuYWdlbWVu
dCoqOiBVc2VzIHRoZSBEUk0gR0VNIGludGVyZmFjZSBmb3IgYnVmZmVyDQo+ICsgICAgYWxsb2Nh
dGlvbiwgbGlmZWN5Y2xlIG1hbmFnZW1lbnQsIGFuZCBETUEtQlVGIGltcG9ydC9leHBvcnQuDQo+
ICsqICAgKipJT01NVSBJc29sYXRpb24qKjogVXNlcyBJT01NVSBjb250ZXh0IGJhbmtzIHRvIGVu
Zm9yY2UgbWVtb3J5IGlzb2xhdGlvbg0KPiArICAgIGJldHdlZW4gZGlmZmVyZW50IERTUCB1c2Vy
IHNlc3Npb25zLg0KPiArKiAgICoqTW9kdWxhciBEZXNpZ24qKjogQ2xlYW4gc2VwYXJhdGlvbiBi
ZXR3ZWVuIHRoZSBjb3JlIERSTSBsb2dpYywgdGhlDQo+ICsgICAgbWVtb3J5IG1hbmFnZXIsIGFu
ZCB0aGUgUlBNc2ctYmFzZWQgdHJhbnNwb3J0IGxheWVyLg0KPiArDQo+ICtBcmNoaXRlY3R1cmUN
Cj4gKz09PT09PT09PT09PQ0KPiArDQo+ICtUaGUgUURBIGRyaXZlciBjb25zaXN0cyBvZiBzZXZl
cmFsIGZ1bmN0aW9uYWwgYmxvY2tzOg0KPiArDQo+ICsxLiAgKipDb3JlIERyaXZlciAoYGBxZGFf
ZHJ2YGApKio6IE1hbmFnZXMgZGV2aWNlIHJlZ2lzdHJhdGlvbiwgZmlsZSBvcGVyYXRpb25zLA0K
PiArICAgIGFuZCBEUk0gYWNjZWwgaW50ZWdyYXRpb24uDQo+ICsyLiAgKipNZW1vcnkgTWFuYWdl
ciAoYGBxZGFfbWVtb3J5X21hbmFnZXJgYCkqKjogQSBmbGV4aWJsZSBtZW1vcnkgbWFuYWdlbWVu
dA0KPiArICAgIGxheWVyIHRoYXQgaGFuZGxlcyBJT01NVSBjb250ZXh0IGJhbmtzLiBJdCBzdXBw
b3J0cyBwbHVnZ2FibGUgYmFja2VuZHMNCj4gKyAgICAoc3VjaCBhcyBETUEtY29oZXJlbnQpIHRv
IGFkYXB0IHRvIGRpZmZlcmVudCBTb0MgbWVtb3J5IGFyY2hpdGVjdHVyZXMuDQo+ICszLiAgKipH
RU0gU3Vic3lzdGVtKio6IEltcGxlbWVudHMgdGhlIERSTSBHRU0gaW50ZXJmYWNlIGZvciBidWZm
ZXIgbWFuYWdlbWVudDoNCj4gKw0KPiArICAgICogKipgYHFkYV9nZW1gYCoqOiBDb3JlIEdFTSBv
YmplY3QgbWFuYWdlbWVudCwgaW5jbHVkaW5nIGFsbG9jYXRpb24sIG1tYXANCj4gKyAgICAgIG9w
ZXJhdGlvbnMsIGFuZCBidWZmZXIgbGlmZWN5Y2xlIG1hbmFnZW1lbnQuDQo+ICsgICAgKiAqKmBg
cWRhX3ByaW1lYGAqKjogUFJJTUUgaW1wb3J0IGZ1bmN0aW9uYWxpdHkgZm9yIERNQS1CVUYgaW50
ZXJvcGVyYWJpbGl0eQ0KPiArICAgICAgd2l0aCBvdGhlciBrZXJuZWwgc3Vic3lzdGVtcy4NCj4g
Kw0KPiArNC4gICoqVHJhbnNwb3J0IExheWVyIChgYHFkYV9ycG1zZ2BgKSoqOiBBYnN0cmFjdGlv
biBvdmVyIHRoZSBSUE1zZyBmcmFtZXdvcmsNCj4gKyAgICB0byBoYW5kbGUgbG93LWxldmVsIG1l
c3NhZ2UgcGFzc2luZyB3aXRoIHRoZSBEU1AgZmlybXdhcmUuDQo+ICs1LiAgKipDb21wdXRlIEJ1
cyAoYGBxZGFfY29tcHV0ZV9idXNgYCkqKjogQSBjdXN0b20gdmlydHVhbCBidXMgdXNlZCB0bw0K
PiArICAgIGVudW1lcmF0ZSBhbmQgbWFuYWdlIHRoZSBzcGVjaWZpYyBjb21wdXRlIGNvbnRleHQg
YmFua3MgZGVmaW5lZCBpbiB0aGUNCj4gKyAgICBkZXZpY2UgdHJlZS4gVGhlIGJ1cyB3YXMgaW50
cm9kdWNlZCBiZWNhdXNlIElPTU1VIGNvbnRleHQgYmFua3MgKENCcykgYXJlDQo+ICsgICAgc3lu
dGhldGljIGNvbnN0cnVjdHMg4oCUIG5vdCByZWFsIHBsYXRmb3JtIGRldmljZXMg4oCUIG1ha2lu
ZyBhIHBsYXRmb3JtIGRyaXZlcg0KPiArICAgIGFuIGluY29ycmVjdCBhYnN0cmFjdGlvbiBmb3Ig
dGhlbS4gVGhlIGVhcmxpZXIgcGxhdGZvcm0tZHJpdmVyIGFwcHJvYWNoIGFsc28NCj4gKyAgICBo
YWQgYSByYWNlIGNvbmRpdGlvbjogZGV2aWNlIG5vZGVzIHdlcmUgY3JlYXRlZCBiZWZvcmUgdGhl
IFJQTXNnIGNoYW5uZWwNCj4gKyAgICByZXNvdXJjZXMgd2VyZSBmdWxseSBpbml0aWFsaXplZCwg
YW5kIGJlY2F1c2UgYGBwcm9iZWBgIHJ1bnMgYXN5bmNocm9ub3VzbHksDQo+ICsgICAgYXBwbGlj
YXRpb25zIGNvdWxkIG9wZW4gYSBDQiBkZXZpY2UgYW5kIGF0dGVtcHQgdG8gc3RhcnQgYSBzZXNz
aW9uIGJlZm9yZQ0KPiArICAgIHRoZSB1bmRlcmx5aW5nIHRyYW5zcG9ydCB3YXMgcmVhZHkuIFRo
ZSBjb21wdXRlIGJ1cyBtYWtlcyBDQiBsaWZldGltZQ0KPiArICAgIGV4cGxpY2l0bHkgc3Vib3Jk
aW5hdGUgdG8gdGhlIHBhcmVudCBRREEgZGV2aWNlLCBjbG9zaW5nIHRoYXQgd2luZG93Lg0KPiAr
Ni4gICoqRmFzdFJQQyBDb3JlIChgYHFkYV9mYXN0cnBjYGApKio6IEltcGxlbWVudHMgdGhlIHBy
b3RvY29sIGxvZ2ljIGZvcg0KPiArICAgIG1hcnNoYWxsaW5nIGFyZ3VtZW50cyBhbmQgaGFuZGxp
bmcgcmVtb3RlIGludm9jYXRpb25zLg0KPiArDQo+ICtVc2VyLVNwYWNlIEFQSQ0KPiArPT09PT09
PT09PT09PT0NCj4gKw0KPiArVGhlIGRyaXZlciBleHBvc2VzIGEgc2V0IG9mIERSTS1jb21wbGlh
bnQgSU9DVExzOg0KPiArDQo+ICsqICAgYGBEUk1fSU9DVExfUURBX1FVRVJZYGA6IFF1ZXJ5IERT
UCB0eXBlIChlLmcuLCAiY2RzcCIsICJhZHNwIikNCj4gKyAgICBhbmQgY2FwYWJpbGl0aWVzLg0K
PiArKiAgIGBgRFJNX0lPQ1RMX1FEQV9SRU1PVEVfU0VTU0lPTl9DUkVBVEVgYDogSW5pdGlhbGl6
ZSBhIG5ldyBwcm9jZXNzIGNvbnRleHQNCj4gKyAgICBvbiB0aGUgRFNQLg0KPiArKiAgIGBgRFJN
X0lPQ1RMX1FEQV9SRU1PVEVfSU5WT0tFYGA6IFN1Ym1pdCBhIHJlbW90ZSBtZXRob2QgaW52b2Nh
dGlvbiAodGhlDQo+ICsgICAgcHJpbWFyeSBleGVjdXRpb24gdW5pdCkuDQo+ICsqICAgYGBEUk1f
SU9DVExfUURBX0dFTV9DUkVBVEVgYDogQWxsb2NhdGUgYSBHRU0gYnVmZmVyIG9iamVjdCBmb3Ig
RFNQIHVzYWdlLg0KPiArKiAgIGBgRFJNX0lPQ1RMX1FEQV9HRU1fTU1BUF9PRkZTRVRgYDogUmV0
cmlldmUgbW1hcCBvZmZzZXRzIGZvciBtZW1vcnkgbWFwcGluZy4NCj4gKyogICBgYERSTV9JT0NU
TF9RREFfUkVNT1RFX01BUGBgIC8gYGBEUk1fSU9DVExfUURBX1JFTU9URV9NVU5NQVBgYDogTWFw
IG9yIHVubWFwDQo+ICsgICAgYnVmZmVycyBpbnRvIHRoZSBEU1AncyB2aXJ0dWFsIGFkZHJlc3Mg
c3BhY2UuIEVhY2ggYWNjZXB0cyBhIGBgcmVxdWVzdGBgDQo+ICsgICAgZmllbGQgc2VsZWN0aW5n
IGJldHdlZW4gYSBsZWdhY3kgb3BlcmF0aW9uIChgYFFEQV9NQVBfUkVRVUVTVF9MRUdBQ1lgYCAv
DQo+ICsgICAgYGBRREFfTVVOTUFQX1JFUVVFU1RfTEVHQUNZYGApIGFuZCBhbiBhdHRyaWJ1dGUt
YmFzZWQgb3BlcmF0aW9uDQo+ICsgICAgKGBgUURBX01BUF9SRVFVRVNUX0FUVFJgYCAvIGBgUURB
X01VTk1BUF9SRVFVRVNUX0FUVFJgYCkuDQoNCkV4cGxhaW4sIHdoYXQgaGFwcGVucyBpbiB0aGUg
dXNlcnMgZG9uJ3QgbWFwIHRoZSBidWZmZXJzIGludG8gdGhlIERTUA0Kc3BhY2UuIFdpbGwgRFJN
X0lPQ1RMX1FEQV9SRU1PVEVfSU5WT0tFIGhhbmRsZSB0aGUgbWFwcGluZyBvciBub3Q/IFdoYXQN
CmlzIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gdGhvc2UgdHdvIG1vZGVzPw0KDQpXb3VsZCB0aGUg
ZHJpdmVyIGJlbmVmaXQgZnJvbSB1c2luZyBHUFVWTT8NCg0KPiArDQo+ICtVc2FnZSBFeGFtcGxl
DQo+ICs9PT09PT09PT09PT09DQo+ICsNCj4gK0EgdHlwaWNhbCBsaWZlY3ljbGUgZm9yIGEgdXNl
ci1zcGFjZSBhcHBsaWNhdGlvbjoNCj4gKw0KPiArMS4gICoqRGlzY292ZXJ5Kio6IE9wZW4gYGAv
ZGV2L2FjY2VsL2FjY2VsKmBgIGFuZCB1c2UNCj4gKyAgICBgYERSTV9JT0NUTF9RREFfUVVFUllg
YCB0byBpZGVudGlmeSB0aGUgRFNQIGRvbWFpbiBzZXJ2ZWQgYnkgdGhhdA0KPiArICAgIGRldmlj
ZSBub2RlLg0KPiArMi4gICoqSW5pdGlhbGl6YXRpb24qKjogQ2FsbCBgYERSTV9JT0NUTF9RREFf
UkVNT1RFX1NFU1NJT05fQ1JFQVRFYGAgdG8NCj4gKyAgICBlc3RhYmxpc2ggYSBzZXNzaW9uIGFu
ZCBjcmVhdGUgYSBwcm9jZXNzIGNvbnRleHQgb24gdGhlIERTUC4NCj4gKzMuICAqKk1lbW9yeSoq
OiBBbGxvY2F0ZSBidWZmZXJzIHZpYSBgYERSTV9JT0NUTF9RREFfR0VNX0NSRUFURWBgIG9yIGlt
cG9ydA0KPiArICAgIERNQS1CVUZzIChQUklNRSBmZCkgZnJvbSBvdGhlciBkcml2ZXJzIHVzaW5n
IGBgRFJNX0lPQ1RMX1BSSU1FX0ZEX1RPX0hBTkRMRWBgLg0KPiArNC4gICoqRXhlY3V0aW9uKio6
IFVzZSBgYERSTV9JT0NUTF9RREFfUkVNT1RFX0lOVk9LRWBgIHRvIHBhc3MgYXJndW1lbnRzIGFu
ZA0KPiArICAgIGV4ZWN1dGUgZnVuY3Rpb25zIG9uIHRoZSBEU1AuDQo+ICs1LiAgKipDbGVhbnVw
Kio6IENsb3NlIGZpbGUgZGVzY3JpcHRvcnMgdG8gYXV0b21hdGljYWxseSByZWxlYXNlIHJlc291
cmNlcyBhbmQNCj4gKyAgICBkZXRhY2ggdGhlIHNlc3Npb24uDQoNCkknZCBoYXZlIGV4cGVjdGVk
IHRoZSBkZXNjcmlwdGlvbiBvZiB0aGUgYWN0dWFsIGV4YW1wbGUuIEkuZS4gY2xvbmUgdGhlDQph
cHAgZnJvbSBodHRwczovL3RoZS5hZGRyLCBwcmVwYXJlIGNsYW5nID49IE5OLk1NLCBRQUlDICho
dHRwczovL2ZvbyksDQpydW4gbWFrZSwgcnVuIHRoZSBhcHAsIGNoZWNrIHRoZSByZXN1bHRzLiBJ
J2QgcmVtaW5kIHRoYXQgRFJNIEFjY2VsIGhhcw0KYSB2ZXJ5IHNwZWNpZmljIHJlcXVpcmVtZW50
IG9mIGhhdmluZyB0aGUgd29ya2luZyB0b29saGFpbiBpbiB0aGUNCm9wZW4tc291cmNlLg0KDQo+
ICsNCj4gK0ludGVybmFsIEltcGxlbWVudGF0aW9uDQo+ICs9PT09PT09PT09PT09PT09PT09PT09
PQ0KPiArDQo+ICtNZW1vcnkgTWFuYWdlbWVudA0KPiArLS0tLS0tLS0tLS0tLS0tLS0NCj4gK1Ro
ZSBkcml2ZXIncyBtZW1vcnkgbWFuYWdlciBjcmVhdGVzIHZpcnR1YWwgIklPTU1VIGRldmljZXMi
IHRoYXQgbWFwIHRvDQo+ICtoYXJkd2FyZSBjb250ZXh0IGJhbmtzLiBUaGlzIGFsbG93cyB0aGUg
ZHJpdmVyIHRvIG1hbmFnZSBtdWx0aXBsZSBpc29sYXRlZA0KPiArYWRkcmVzcyBzcGFjZXMuIFRo
ZSBpbXBsZW1lbnRhdGlvbiB1c2VzIGEgRE1BLWNvaGVyZW50IGJhY2tlbmQgdG8gZW5zdXJlIGRh
dGEgY29uc2lzdGVuY3kNCj4gK2JldHdlZW4gdGhlIENQVSBhbmQgRFNQIHdpdGhvdXQgbWFudWFs
IGNhY2hlIG1haW50ZW5hbmNlIGluIG1vc3QgY2FzZXMuDQoNCkdFTSB1c2FnZT8NCg0KPiArDQo+
ICtEZWJ1Z2dpbmcNCj4gKz09PT09PT09PQ0KPiArVGhlIGRyaXZlciBpbmNsdWRlcyBleHRlbnNp
dmUgZHluYW1pYyBkZWJ1ZyBzdXBwb3J0LiBFbmFibGUgaXQgdmlhIHRoZQ0KPiAra2VybmVsJ3Mg
ZHluYW1pYyBkZWJ1ZyBjb250cm9sOg0KPiArDQo+ICsuLiBjb2RlLWJsb2NrOjogYmFzaA0KPiAr
DQo+ICsgICAgZWNobyAiZmlsZSBkcml2ZXJzL2FjY2VsL3FkYS8qICtwIiA+IC9zeXMva2VybmVs
L2RlYnVnL2R5bmFtaWNfZGVidWcvY29udHJvbA0KPiArDQo+ICtUZXN0aW5nDQo+ICs9PT09PT09
DQo+ICtUaGUgUURBIGRyaXZlciBjYW4gYmUgZXhlcmNpc2VkIHVzaW5nIHRoZSBgYGZhc3RycGNf
dGVzdGBgIHV0aWxpdHkgZnJvbSB0aGUNCj4gK0Zhc3RSUEMgdXNlcnNwYWNlIGxpYnJhcnkuIFJ1
biB0aGUgdGVzdCBhcHBsaWNhdGlvbjoNCg0KcG9pbnRlcg0KDQo+ICsNCj4gKy4uIGNvZGUtYmxv
Y2s6OiBiYXNoDQo+ICsNCj4gKyAgICBmYXN0cnBjX3Rlc3QgLWQgMyAtVSAxIC10IGxpbnV4IC1h
IHY2OA0KPiArDQo+ICsqKk9wdGlvbnMqKg0KPiArDQo+ICtgYC1kIGRvbWFpbmBgDQo+ICsgICAg
U2VsZWN0IHRoZSBEU1AgZG9tYWluIHRvIHJ1biBvbjoNCj4gKw0KPiArICAgICogYGAwYGAg4oCU
IEFEU1ANCj4gKyAgICAqIGBgMWBgIOKAlCBNRFNQDQo+ICsgICAgKiBgYDJgYCDigJQgU0RTUA0K
PiArICAgICogYGAzYGAg4oCUIENEU1AgKihkZWZhdWx0IG9uIHRhcmdldHMgd2l0aCBDRFNQKSoN
Cj4gKw0KPiArYGAtVSB1bnNpZ25lZF9QRGBgDQo+ICsgICAgU2VsZWN0IHNpZ25lZCBvciB1bnNp
Z25lZCBwcm90ZWN0aW9uIGRvbWFpbjoNCj4gKw0KPiArICAgICogYGAwYGAg4oCUIHNpZ25lZCBQ
RA0KPiArICAgICogYGAxYGAg4oCUIHVuc2lnbmVkIFBEICooZGVmYXVsdCkqDQo+ICsNCj4gK2Bg
LXQgdGFyZ2V0YGANCj4gKyAgICBUYXJnZXQgcGxhdGZvcm06IGBgYW5kcm9pZGBgIG9yIGBgbGlu
dXhgYCAqKGRlZmF1bHQ6IGxpbnV4KSoNCj4gKw0KPiArYGAtYSBhcmNoX3ZlcnNpb25gYA0KPiAr
ICAgIERTUCBhcmNoaXRlY3R1cmUgdmVyc2lvbiwgZS5nLiBgYHY2OGBgLCBgYHY3NWBgICooZGVm
YXVsdDogdjY4KSoNCj4gDQo+IC0tIA0KPiAyLjM0LjENCj4gDQo+IA0KDQotLSANCldpdGggYmVz
dCB3aXNoZXMNCkRtaXRyeQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

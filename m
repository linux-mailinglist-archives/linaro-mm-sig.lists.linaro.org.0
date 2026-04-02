Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LELI9hj5mkuvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E29EF431845
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:35:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F18DD404F5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:35:18 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 776A73F70C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 08:36:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=RHma4SsO;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=iIWXLrMg;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6326n7Im1128810
	for <linaro-mm-sig@lists.linaro.org>; Thu, 2 Apr 2026 08:36:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nZz3msypn/iPTQp7pBZHHsP/2F3PYJPj/B+Z6Rd1qmE=; b=RHma4SsOd/81yQFQ
	xAx6QCQAEfsXUYd1eiP/9KcSKt05B/8+nzzL65Ik3f6iUQz9+9v40os1eMNUM4Om
	IS9+3uV9M7/lJ0a6VZGq6psD7b30MCA+yw5iTekmwvuLomU4AkZYSi58G9jG5Mpa
	iOp2Y8QzPE972/fofH+xbDT6h1kVAjUtirRtXOJD/iBWVX/JGnpdt+p1fi87apVD
	1BHkr0w3slGvST99Bky9/WwAq3wJu5E2rRTGZuY1HvKgHB9TediDxYiK2oU1nnOM
	VB+ogu469E8DK5gDXnhY4WdZGMdplI6U/29ywBKz1Vr1nrk+2NFbY0oyylNTCK//
	s0HIyQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d96k9b4ma-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Apr 2026 08:36:10 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35d93a8149bso2264171a91.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Apr 2026 01:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775118970; x=1775723770; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nZz3msypn/iPTQp7pBZHHsP/2F3PYJPj/B+Z6Rd1qmE=;
        b=iIWXLrMgMc3fmo82c0HYfV4nhHHVfQBkQgJ/BEs+Xbgbu1+D7twM41fz3aLWcIr0e3
         DQXpVAAIdACJUI9E3Xfe3ls/f8vImoqbAuQ/IWAZ4CPp2xTaKaRxqa8GHMiUQ0F+FBU/
         ExvPfvtj0iX1Nqt5nAaQmm5Te/MFpuwOxEcj8E+qTAHSZA5jFDdffa3lYrSqqzps01Qj
         9KDt4c3YUoo00Cbf4SrgpSsIFd9N2eLXlGKvbZ2hNBb1Mjt3b7IiyYNX9CqnnKGMLgXa
         +3UnRLybHICylurCg/ZaFGJaSwE6/A+T2utcIF8bX2hIFGa4EIsZjyyaRx6cCsZwNLQS
         h/7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775118970; x=1775723770;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nZz3msypn/iPTQp7pBZHHsP/2F3PYJPj/B+Z6Rd1qmE=;
        b=ltRTM30js/0Z39G3cIeyhZAI9Gl/j0T7+/OanzMytbWXXg6WDH8/FcxdRuJSIvgkfZ
         JW3YAMeDAu/JcqudCVhmvKou2eFNJgsn1vJKxxfMUrXfShI5i4d/V6InHaGQb0WKpWeT
         gs+TKXxSGADSy4+6nHH5zJtJb5UgqmftBtasPLiBEmmJ5OyBZiGcUJZ+rjGVFVtdVDuh
         l62YdnPKIJqVCp9aCRdAYOj0uh4TI0R7S7/0etrjX+YV167RESIEaYcg8D42iz1nplDl
         W3NuPu0Fur2hHePLdCmO29VedC0rWwkYyOvFzkxeaycHFx1BvrvoB//Snpmau1t4i59n
         XduA==
X-Forwarded-Encrypted: i=1; AJvYcCW7pSjztcsuboTKUeAcwbcHFNYcuJyu5NpHIW3Iy+KpcnY5PlcBLKzLQzkaIhCyFBPu50291u3uxx/kU6lI@lists.linaro.org
X-Gm-Message-State: AOJu0YzgkKOzei9HPPQuM5iib1i2P+HVk71tyEu+sxM76m+XbGmaCH5e
	7iI7Hd24IKudDBFG9B3jDVjInPvOg/LAymxj8l2dnKjd8PGqYV4smcXRA51RddBSmt0dNSSbAnQ
	oxAHSMFQY/SYNGVPi9X9V5dty4Ya9Gn6fdwk7Eh1YE+eIVvAzH57Hz8aG/A5wEsceH6eyFw==
X-Gm-Gg: AeBDiesvLjFExsPEy2cfjAd+zinx4AlJKf+4e25Z9wGWgdBiAGPNeRXY0m/vjIiO8/n
	0qwtlxjYqtTM6+tco+qyMGI/aIPL3blUUVNZLuVM7nOQPn40RoJ3Nwkg3pc+CJ+ryhg+elmhoM0
	VX5pQ3gVuaKkfWtLbLyPMv4lp5MtmseE7AsWMpBgPuRm4zu9tPnKMk5UfvN9NLpy7GbVI+sjeUg
	wzrFESel0AwH7eywxXTF/r+/PmTpryzBNIcYID+waR5pdly4EH1O4FUlODPNS9HZEIbZkNkLvYw
	xzRugMTgTlB41m0YbkFR3zXXVGwSCg9pJ1RrVSpMTk4M1iukS2o6t9WrZNH+uYqYVFN1vJwG29c
	J7KUIj5Kp7Llsp7bz3w8HWOpsSKHBVVYGyl5Vi1HiMGlfr/E0n9qQ
X-Received: by 2002:a17:902:db12:b0:2b2:4c30:e6e2 with SMTP id d9443c01a7336-2b277e256c0mr15094695ad.16.1775118969715;
        Thu, 02 Apr 2026 01:36:09 -0700 (PDT)
X-Received: by 2002:a17:902:db12:b0:2b2:4c30:e6e2 with SMTP id d9443c01a7336-2b277e256c0mr15094325ad.16.1775118969177;
        Thu, 02 Apr 2026 01:36:09 -0700 (PDT)
Received: from [192.168.1.14] ([110.225.167.58])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b2749e2e97sm27595375ad.82.2026.04.02.01.36.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2026 01:36:08 -0700 (PDT)
Message-ID: <998ce121-e027-441d-a3f4-2f3e41e10830@oss.qualcomm.com>
Date: Thu, 2 Apr 2026 14:06:00 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-12-fe46a9c1a046@oss.qualcomm.com>
 <e87c0c1d-82f1-4a03-9a56-9bf3e03273cf@amd.com>
 <29f9bb45-5c3f-4847-a629-21cef540f38b@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <29f9bb45-5c3f-4847-a629-21cef540f38b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=doLWylg4 c=1 sm=1 tr=0 ts=69ce2a7a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=GstQyB7T1i92F5dDEt+vJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=_EeEMxcBAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=yv3-IXtlHroiPP0bXpQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=czjwGCTIUPoA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: TImnaw4DlM0QvJ5IyJGTiWgPzp_FHMrl
X-Proofpoint-GUID: TImnaw4DlM0QvJ5IyJGTiWgPzp_FHMrl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDAyMDA3NiBTYWx0ZWRfX1ZgT8JR1gvij
 inGgnkFVF3swVSqin4jETk8ftJmhVrWmJli/40KBso5YZp6bU6Upfz+ePRwZc9Pxo8fQjst9pv/
 dG3ki8nTtrvX+hRaC4DqsKcGr1PGAGxCoGJlnhsjxXWw6LOMP8prCq29GGHnNDMj4gUFufVQHVy
 FDqsvWZgmAJqBdO2b3eG1cf6m+QUaRTm9nfGLe50uxMSV+7IK7bk339+xLHuhbn8iiwx4xNyxjj
 +52sMNPB4zWYYmt1ePzEHZ8UZFyRBc7bN9vjxfs2yYIwsWF+JH83SvLvySXhd/YTESmfogt06yd
 GJ8BrDIuu3V708K0D8dnp96gQwtUfsLK2Z6rr2vS89l2u6IBt1nbfa5J/gcWh9vBQOqtKHYvHZz
 /BoR/6Tq2b5hTFM+oIsKElF8aFrjXfoeBlwzNb/SM+nHUUG0WpQrzfkTiafINoc//CoeUAR4bCm
 Tz9dnZgJtsMzJvgju6g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-02_01,2026-04-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2604020076
X-Spamd-Bar: ---
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BAOYD5JWQGMHMH3MVY5YNWOWHVEJCHEU
X-Message-ID-Hash: BAOYD5JWQGMHMH3MVY5YNWOWHVEJCHEU
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:33:39 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 12/18] accel/qda: Add PRIME dma-buf import support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BAOYD5JWQGMHMH3MVY5YNWOWHVEJCHEU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[440];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.972];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[aka.ms];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: E29EF431845
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCk9uIDMvOS8yMDI2IDEyOjI5IFBNLCBFa2Fuc2ggR3VwdGEgd3JvdGU6DQo+DQo+IE9uIDIv
MjQvMjAyNiAyOjQyIFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gT24gMi8yMy8yNiAy
MDowOSwgRWthbnNoIEd1cHRhIHdyb3RlOg0KPj4+IFtTaWUgZXJoYWx0ZW4gbmljaHQgaMOkdWZp
ZyBFLU1haWxzIHZvbiBla2Fuc2guZ3VwdGFAb3NzLnF1YWxjb21tLmNvbS4gV2VpdGVyZSBJbmZv
cm1hdGlvbmVuLCB3YXJ1bSBkaWVzIHdpY2h0aWcgaXN0LCBmaW5kZW4gU2llIHVudGVyIGh0dHBz
Oi8vYWthLm1zL0xlYXJuQWJvdXRTZW5kZXJJZGVudGlmaWNhdGlvbiBdDQo+Pj4NCj4+PiBBZGQg
UFJJTUUgZG1hLWJ1ZiBpbXBvcnQgc3VwcG9ydCBmb3IgUURBIEdFTSBidWZmZXIgb2JqZWN0cyBh
bmQgaW50ZWdyYXRlDQo+Pj4gaXQgd2l0aCB0aGUgZXhpc3RpbmcgcGVyLXByb2Nlc3MgbWVtb3J5
IG1hbmFnZXIgYW5kIElPTU1VIGRldmljZSBtb2RlbC4NCj4+Pg0KPj4+IFRoZSBpbXBsZW1lbnRh
dGlvbiBleHRlbmRzIHFkYV9nZW1fb2JqIHRvIHJlcHJlc2VudCBpbXBvcnRlZCBkbWEtYnVmcywN
Cj4+PiBpbmNsdWRpbmcgZG1hX2J1ZiByZWZlcmVuY2VzLCBhdHRhY2htZW50IHN0YXRlLCBzY2F0
dGVyLWdhdGhlciB0YWJsZXMNCj4+PiBhbmQgYW4gaW1wb3J0ZWQgRE1BIGFkZHJlc3MgdXNlZCBm
b3IgRFNQLWZhY2luZyBib29rLWtlZXBpbmcuIFRoZQ0KPj4+IHFkYV9nZW1fcHJpbWVfaW1wb3J0
KCkgcGF0aCBoYW5kbGVzIHJlaW1wb3J0cyBvZiBidWZmZXJzIG9yaWdpbmFsbHkNCj4+PiBleHBv
cnRlZCBieSBRREEgYXMgd2VsbCBhcyBpbXBvcnRzIG9mIGV4dGVybmFsIGRtYS1idWZzLCBhdHRh
Y2hpbmcgdGhlbQ0KPj4+IHRvIHRoZSBhc3NpZ25lZCBJT01NVSBkZXZpY2UNCj4+IFRoYXQgaXMg
dXN1YWxseSBhbiBhYnNvbHV0ZWx5IGNsZWFyIE5PLUdPIGZvciBETUEtYnVmcy4gV2hlcmUgZXhh
Y3RseSBpbiB0aGUgY29kZSBpcyB0aGF0Pw0KPiBkbWFfYnVmX2F0dGFjaCogdG8gY29tdXRlLWNi
IGlvbW11IGRldmljZXMgYXJlIGNyaXRpY2FsIGZvciBEU1BzIHRvIGFjY2VzcyB0aGUgYnVmZmVy
Lg0KPiBUaGlzIGlzIG5lZWRlZCBpZiB0aGUgYnVmZmVyIGlzIGV4cG9ydGVkIGJ5IGFueW9uZSBv
dGhlciB0aGFuIFFEQShzYXkgc3lzdGVtIGhlYXApLiBJZiB0aGlzIGlzIG5vdA0KPiB0aGUgY29y
cmVjdCB3YXksIHdoYXQgc2hvdWxkIGJlIHRoZSByaWdodCB3YXkgaGVyZT8gT24gdGhlIGN1cnJl
bnQgZmFzdHJwYyBkcml2ZXIgYWxzbywNCj4gdGhlIERNQUJVRiBpcyBnZXR0aW5nIGF0dGFjaGVk
IHdpdGggaW9tbXUgZGV2aWNlWzFdIGR1ZSB0byB0aGUgc2FtZSByZXF1aXJlbWVudC4NCj4NCj4g
WzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQv
bGludXgtbmV4dC5naXQvdHJlZS9kcml2ZXJzL21pc2MvZmFzdHJwYy5jI243NzkNCg0KSGkgQ2hy
aXN0aWFuLA0KDQpEbyB5b3UgaGF2ZSBhbnkgc3VnZ2VzdGlvbnMgZm9yIHRoZSBzaGFyZWQgcmVx
dWlyZW1lbnRzPw0KDQpJJ20gcmV3b3JraW5nIG9uIHRoZSBuZXh0IHZlcnNpb24gYW5kIGN1cnJl
bnRseSBJIGRvbid0IHNlZSBhbnkgb3RoZXIgd2F5DQp0byBoYW5kbGUgZG1hX2J1Zl9hdHRhY2gq
IGNhc2VzLg0KDQovL0VrYW5zaA0KDQo+Pj4gYW5kIG1hcHBpbmcgdGhlbSB0aHJvdWdoIHRoZSBt
ZW1vcnkgbWFuYWdlcg0KPj4+IGZvciBEU1AgYWNjZXNzLiBUaGUgR0VNIGZyZWUgcGF0aCBpcyB1
cGRhdGVkIHRvIHVubWFwIGFuZCBkZXRhY2gNCj4+PiBpbXBvcnRlZCBidWZmZXJzIHdoaWxlIHBy
ZXNlcnZpbmcgdGhlIGV4aXN0aW5nIGJlaGF2aW91ciBmb3IgbG9jYWxseQ0KPj4+IGFsbG9jYXRl
ZCBtZW1vcnkuDQo+Pj4NCj4+PiBUaGUgUFJJTUUgZmQtdG8taGFuZGxlIHBhdGggaXMgaW1wbGVt
ZW50ZWQgaW4gcWRhX3ByaW1lX2ZkX3RvX2hhbmRsZSgpLA0KPj4+IHdoaWNoIHJlY29yZHMgdGhl
IGNhbGxpbmcgZHJtX2ZpbGUgaW4gYSBkcml2ZXItcHJpdmF0ZSBpbXBvcnQgY29udGV4dA0KPj4+
IGJlZm9yZSBpbnZva2luZyB0aGUgY29yZSBEUk0gaGVscGVycy4gVGhlIEdFTSBpbXBvcnQgY2Fs
bGJhY2sgcmV0cmlldmVzDQo+Pj4gdGhpcyBjb250ZXh0IHRvIGVuc3VyZSB0aGF0IGFuIElPTU1V
IGRldmljZSBpcyBhc3NpZ25lZCB0byB0aGUgcHJvY2Vzcw0KPj4+IGFuZCB0aGF0IGltcG9ydGVk
IGJ1ZmZlcnMgZm9sbG93IHRoZSBzYW1lIHBlci1wcm9jZXNzIElPTU1VIHNlbGVjdGlvbg0KPj4+
IHJ1bGVzIGFzIG5hdGl2ZWx5IGFsbG9jYXRlZCBHRU0gb2JqZWN0cy4NCj4+Pg0KPj4+IFRoaXMg
cGF0Y2ggcHJlcGFyZXMgdGhlIGRyaXZlciBmb3IgaW50ZXJvcGVyYWJsZSBidWZmZXIgc2hhcmlu
ZyBiZXR3ZWVuDQo+Pj4gUURBIGFuZCBvdGhlciBkbWEtYnVmIGNhcGFibGUgc3Vic3lzdGVtcyB3
aGlsZSBrZWVwaW5nIElPTU1VIG1hcHBpbmcgYW5kDQo+Pj4gbGlmZXRpbWUgaGFuZGxpbmcgY29u
c2lzdGVudCB3aXRoIHRoZSBleGlzdGluZyBHRU0gYWxsb2NhdGlvbiBmbG93Lg0KPj4+DQo+Pj4g
U2lnbmVkLW9mZi1ieTogRWthbnNoIEd1cHRhIDxla2Fuc2guZ3VwdGFAb3NzLnF1YWxjb21tLmNv
bT4NCj4+IC4uLg0KPj4NCj4+PiBAQCAtMTUsMjMgKzE2LDI5IEBAIHN0YXRpYyBpbnQgdmFsaWRh
dGVfZ2VtX29ial9mb3JfbW1hcChzdHJ1Y3QgcWRhX2dlbV9vYmogKnFkYV9nZW1fb2JqKQ0KPj4+
ICAgICAgICAgICAgICAgICBxZGFfZXJyKE5VTEwsICJJbnZhbGlkIEdFTSBvYmplY3Qgc2l6ZVxu
Iik7DQo+Pj4gICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPj4+ICAgICAgICAgfQ0K
Pj4+IC0gICAgICAgaWYgKCFxZGFfZ2VtX29iai0+aW9tbXVfZGV2IHx8ICFxZGFfZ2VtX29iai0+
aW9tbXVfZGV2LT5kZXYpIHsNCj4+PiAtICAgICAgICAgICAgICAgcWRhX2VycihOVUxMLCAiQWxs
b2NhdGVkIGJ1ZmZlciBtaXNzaW5nIElPTU1VIGRldmljZVxuIik7DQo+Pj4gLSAgICAgICAgICAg
ICAgIHJldHVybiAtRUlOVkFMOw0KPj4+IC0gICAgICAgfQ0KPj4+IC0gICAgICAgaWYgKCFxZGFf
Z2VtX29iai0+aW9tbXVfZGV2LT5kZXYpIHsNCj4+PiAtICAgICAgICAgICAgICAgcWRhX2VycihO
VUxMLCAiQWxsb2NhdGVkIGJ1ZmZlciBtaXNzaW5nIElPTU1VIGRldmljZVxuIik7DQo+Pj4gLSAg
ICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPj4+IC0gICAgICAgfQ0KPj4+IC0gICAgICAg
aWYgKCFxZGFfZ2VtX29iai0+dmlydCkgew0KPj4+IC0gICAgICAgICAgICAgICBxZGFfZXJyKE5V
TEwsICJBbGxvY2F0ZWQgYnVmZmVyIG1pc3NpbmcgdmlydHVhbCBhZGRyZXNzXG4iKTsNCj4+PiAt
ICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+Pj4gLSAgICAgICB9DQo+Pj4gLSAgICAg
ICBpZiAocWRhX2dlbV9vYmotPmRtYV9hZGRyID09IDApIHsNCj4+PiAtICAgICAgICAgICAgICAg
cWRhX2VycihOVUxMLCAiQWxsb2NhdGVkIGJ1ZmZlciBtaXNzaW5nIERNQSBhZGRyZXNzXG4iKTsN
Cj4+PiAtICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+Pj4gKyAgICAgICBpZiAocWRh
X2dlbV9vYmotPmlzX2ltcG9ydGVkKSB7DQo+PiBBYnNvbHV0ZWx5IGNsZWFyIE5BSyB0byB0aGF0
LiBJbXBvcnRlZCBidWZmZXJzICpjYW4ndCogYmUgbW1hcGVkIHRocm91Z2ggdGhlIGltcG9ydGVy
IQ0KPj4NCj4+IFVzZXJzcGFjZSBuZWVkcyB0byBtbWFwKCkgdGhlbSB0aHJvdWdoIHRoZSBleHBv
cnRlci4NCj4+DQo+PiBJZiB5b3UgYWJzb2x1dGVseSBoYXZlIHRvIG1hcCB0aGVtIHRocm91Z2gg
dGhlIGltcG9ydGVyIGZvciB1QVBJIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgdGhlbiB0aGVyZSBp
cyBkbWFfYnVmX21tYXAoKSBmb3IgdGhhdCwgYnV0IHRoaXMgaXMgY2xlYXJseSBub3QgdGhlIGNh
c2UgaGVyZS4NCj4+DQo+PiAuLi4NCj4gT2theSwgdGhlIHJlcXVpcmVtZW50IGlzIHNsaWdodGx5
IGRpZmZlcmVudCBoZXJlLiBBbnkgYnVmZmVyIHdoaWNoIGlzIG5vdCBhbGxvY2F0ZWQgdXNpbmcg
dGhlDQo+IFFEQSBHRU0gaW50ZXJmYWNlIG5lZWRzIHRvIGJlIGF0dGFjaGVkIHRvIHRoZSBpb21t
dSBkZXZpY2UgZm9yIHRoYXQgcGFydGljdWxhciBwcm9jZXNzIHRvDQo+IGVuYWJsZSBEU1AgZm9y
IHRoZSBhY2Nlc3MuIEkgc2hvdWxkIG5vdCBjYWxsIGl0IGBtbWFwYCBpbnN0ZWFkIGl0IHNob3Vs
ZCBiZSBjYWxsZWQgaW1wb3J0aW5nIHRoZQ0KPiBidWZmZXIgdG8gYSBwYXJ0aWN1bGFyIGlvbW11
IGNvbnRleHQgYmFuay4gV2l0aCB0aGlzIGRlZmluaXRpb24sIGlzIGl0IGZpbmUgdG8ga2VlcCBp
dCB0aGlzIHdheT8gT3INCj4gc2hvdWxkIHRoZSBkbWFfYnVmX2F0dGFjaCogY2FsbHMgYmUgbW92
ZWQgdG8gc29tZSBvdGhlciBwbGFjZT8NCj4+PiArc3RhdGljIGludCBxZGFfbWVtb3J5X21hbmFn
ZXJfbWFwX2ltcG9ydGVkKHN0cnVjdCBxZGFfbWVtb3J5X21hbmFnZXIgKm1lbV9tZ3IsDQo+Pj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBxZGFfZ2Vt
X29iaiAqZ2VtX29iaiwNCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgc3RydWN0IHFkYV9pb21tdV9kZXZpY2UgKmlvbW11X2RldikNCj4+PiArew0KPj4+ICsg
ICAgICAgc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsNCj4+PiArICAgICAgIGRtYV9hZGRyX3QgZG1h
X2FkZHI7DQo+Pj4gKyAgICAgICBpbnQgcmV0ID0gMDsNCj4+PiArDQo+Pj4gKyAgICAgICBpZiAo
IWdlbV9vYmotPmlzX2ltcG9ydGVkIHx8ICFnZW1fb2JqLT5zZ3QgfHwgIWlvbW11X2Rldikgew0K
Pj4+ICsgICAgICAgICAgICAgICBxZGFfZXJyKE5VTEwsICJJbnZhbGlkIHBhcmFtZXRlcnMgZm9y
IGltcG9ydGVkIGJ1ZmZlciBtYXBwaW5nXG4iKTsNCj4+PiArICAgICAgICAgICAgICAgcmV0dXJu
IC1FSU5WQUw7DQo+Pj4gKyAgICAgICB9DQo+Pj4gKw0KPj4+ICsgICAgICAgZ2VtX29iai0+aW9t
bXVfZGV2ID0gaW9tbXVfZGV2Ow0KPj4+ICsNCj4+PiArICAgICAgIHNnID0gZ2VtX29iai0+c2d0
LT5zZ2w7DQo+Pj4gKyAgICAgICBpZiAoc2cpIHsNCj4+PiArICAgICAgICAgICAgICAgZG1hX2Fk
ZHIgPSBzZ19kbWFfYWRkcmVzcyhzZyk7DQo+Pj4gKyAgICAgICAgICAgICAgIGRtYV9hZGRyICs9
ICgodTY0KWlvbW11X2Rldi0+c2lkIDw8IDMyKTsNCj4+PiArDQo+Pj4gKyAgICAgICAgICAgICAg
IGdlbV9vYmotPmltcG9ydGVkX2RtYV9hZGRyID0gZG1hX2FkZHI7DQo+PiBXZWxsIHRoYXQgbG9v
a3MgbGlrZSB5b3UgYXJlIG9ubHkgdXNpbmcgdGhlIGZpcnN0IERNQSBhZGRyZXNzIGZyb20gdGhl
IGltcG9ydGVkIHNndC4gV2hhdCBhYm91dCB0aGUgb3RoZXJzPw0KPiBJIG1pZ2h0IGhhdmUgYSBw
cm9wZXIgYXBwYWNoIGZvciB0aGlzIG5vdywgd2lsbCB1cGRhdGUgaW4gdGhlIG5leHQgc3Bpbi4N
Cj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJQjCsAU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:56:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCF1412268
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:56:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DBFF64510F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:30 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 808C0401B1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:41:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=bb6+ZXg4;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=YCIAJWFA;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PEkWX73041162
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:41:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YldBZQ/Jim+tynF85y7k+vY7BGkAqZn1hJiK/ioWbpQ=; b=bb6+ZXg4Bc21i6nI
	8YZgTqmAMOzl06INuTbAreMHrTwt9uIaIbxUXWgqIj90/VMFd0maXT2OFDW6JYg7
	K3KWk+18VoLozcITPhcI2VBzd8Jt6u+Ef5fWU2aek2C+GgEj0WeSlDu2U+sPmyz+
	ZarHADoXvpftmC/fQPY6EXQ1mpg8lOnG+ylhPR4YMQOiaktPAP4DjVzUByvyKSGn
	BYSLMygKkC/C6+JJ+rq+7G49iysdZhsU/lUbJ66yKZeB755ABxZKg+A+HuhWea99
	2ITdBRgW+YB+i5N6/3IJLENnIM5CDJqAsLjX+m/S9G0CYsbM0RFhTzgFxX2tdQ5n
	0JYRPQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj350gyus-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:41:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb52a9c0eeso2142916885a.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 11:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772048459; x=1772653259; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YldBZQ/Jim+tynF85y7k+vY7BGkAqZn1hJiK/ioWbpQ=;
        b=YCIAJWFAKUVfg3QQV2dwEjGCPhEReUe7qDBIK/DiqfNnvv3l7/KsFN/qTCFeyuWMcx
         FbBPrj684RJYWbE3t3Iy5yUI0XQSWH4bxDhl813cAGArVj8n6qhCMOGmbBmibGWmTgvp
         QwNNZguke4kz4CMYQjcYoEIOUgTcRAQyfyE58wf+O6CouWKWz4va1CASPrmyNkPQwoJI
         /st1wNiBEPVJYIqZ/b29yi4p5E46hECvLYdI5BgcrgFEdZ3JhD7rl/QGyNzWuRyiDCiR
         KYMAsDxkiw0QRv1jsoxXQ0Jrol1mN2MgAdfn7aDnaoovT0XP+4taUuZVzP9zfI8LywL+
         1jHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772048459; x=1772653259;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YldBZQ/Jim+tynF85y7k+vY7BGkAqZn1hJiK/ioWbpQ=;
        b=aU8veUu8EskPZZBzgW/Xs5zPbsDQnc515SGlEt9aiQLR/3LaUWgWk5GT+vE4UIhxYo
         YFJegWM9sSbaSyc+XgWUlMv73pqMyEjYLKPfo3ZWAZVrgsOM2ZSfXdLG7elGWGChV4Q1
         /auAzgbtP3SeBLjt3fMvSbvpHNnoRKepDafFZQ746G3qu8f6J24AjXpVH1jhKWeJ3sej
         tX4UHzE7GrF+n12iu4TbZRrNg3K7U1tSCv2CN0uQr1e0ttXeIo6ZzZZ7vzBgxp8dv/Ca
         HVIy3i2hf8vTBgQM2M/FW/DPVTiLuvzaIFgth1Vj9//FkXdZMXD8Gt1uGnZq/XZFDFQ5
         q93w==
X-Forwarded-Encrypted: i=1; AJvYcCVs1fFhY0j2c5s2R7KsPZzMFDfcJ0c18a2xiwf0O0HqjWn5+6rxgD+sUFmhKgdxxyDGQSq/RmEigUvmW44z@lists.linaro.org
X-Gm-Message-State: AOJu0Yw2qRYjAdVjtY0MacQG8+TlAqdIFnXLE0XilZpPgeuTeIW43Fz2
	ZqX9HoxwCcKWjWKyctWJsjEgQTdMOwg3QgVxQ7xLXWUpYKBvVBFxnI3Q082zwJhtwzkDvMxTF3e
	qanSMXKbDWCkvEmx4nahNZ5Ica8uKAZeCDyqie9gJjosd+Iti7HT59g6xr3Eie36s94WYeQ==
X-Gm-Gg: ATEYQzzeTQll4vyUUY2jNJzffmqPoT3OYj0ohusXuKV0aT5KVPx51Nfx202oPvmhYhw
	QeXUoKnM8F/XBIXirDv7SKBdhNgEFOKhcA5lKBf8lcINGhuMp4bypju0YF31SVpQJ1og1gdD/bU
	iEqQ1RgxwM9qVMjO1UjhPRUMLTLULZjoJEFEiXimbLIFVFNPIVx6wqEJEK7cYbhKo8OWH9wOMiL
	KOaJ1Hb/WORLimB9Vv/ByNSTdkFklQqlj3ArViZfn0LZeAqyKAO2RhXJb2KLFFRMLKHta/QsH66
	ekJv2gYO7CZujnMJYo54DeWrADYh6cAHKyq1nZgHupKqpATJLqUzDsjjZyA/Wi2KBTrqGkrK/Qn
	5RNDrRWaEfUaVRgDNNTd+FWkAL9FfJUBbmj3poqP+jZPps6hmvD4ae5SxZG9OG4lh4cdwV3oTjM
	laNDkG+T/QwGJVFb2+1yj1W3IOET2h00HtQ6E=
X-Received: by 2002:a05:620a:294b:b0:8ca:fdc1:cc9c with SMTP id af79cd13be357-8cbbd07f3e0mr229588485a.76.1772048459315;
        Wed, 25 Feb 2026 11:40:59 -0800 (PST)
X-Received: by 2002:a05:620a:294b:b0:8ca:fdc1:cc9c with SMTP id af79cd13be357-8cbbd07f3e0mr229583885a.76.1772048458831;
        Wed, 25 Feb 2026 11:40:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f21a4293sm46201fa.39.2026.02.25.11.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 11:40:58 -0800 (PST)
Date: Wed, 25 Feb 2026 21:40:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Trilok Soni <trilokkumar.soni@oss.qualcomm.com>
Message-ID: <jmv4jkwku5x5acxno3vyar4cozl3makdz6vzdyjsitf2vtyhp6@cxtl7zmaayvq>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-1-fe46a9c1a046@oss.qualcomm.com>
 <e94ce683-d47c-4c8e-8b26-cd327c891cc8@oss.qualcomm.com>
 <5a278b02-f2ad-408b-b0ad-f2297817bd7e@oss.qualcomm.com>
 <opjniedtfhkv7vlb57g3xyikcfkxelthx3lmspmypws4vxz4oc@4uypmmf4t6fb>
 <4e4b50fe-1091-451e-b854-f7b061ebd88d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e4b50fe-1091-451e-b854-f7b061ebd88d@oss.qualcomm.com>
X-Proofpoint-GUID: Sr9maeEgJgYVhkR8VeQvLNr6rEb0FEQb
X-Authority-Analysis: v=2.4 cv=Zs/g6t7G c=1 sm=1 tr=0 ts=699f504c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=eG7pLEoM89m89vxRJVQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDE4OCBTYWx0ZWRfX0IXnQBxezyu+
 TohMODf2kS5soWpL9+h58ezeL1qMbzGDbXWpCYMHRn1btK79nb+aeu+pdnShgPqjzyRgn3L3P57
 n7JZvpkF1vJMVlvlyzX34GnBhm3aX8sbjXf/PmOk5M1YNiE6as4nZjgelp7BFCvZTcF8WA6bq2/
 RR5ZwberNeWwF9GDiJXdd8fRESVmw5NehpaDuBH/L7g8YNYv/P/qnFEugVM1LsEMlRWVEn3G64b
 yf24Wpbr2wDMhtfjWrWQxzZrZ0aIfhl2KmaQaDl5rYlHLAvbg+CND17AHKnWHjnmtJbtMvsvnf2
 yLt2Ap+/PPEtQa3Fk2+eRqYkugArWAjsMh2rcQ1cl0WPh1H4GyvbvJ2KAVIDqeoe0IN32IDB35Z
 L2zWht1cGB7uEae8VD197LH7kZ2cspQty6SFf/4bCqnNj/nmZ1TWWVOAdYynZ2e4ec/AUJF5VLL
 I26a3aDkNmSwp/UVU7w==
X-Proofpoint-ORIG-GUID: Sr9maeEgJgYVhkR8VeQvLNr6rEb0FEQb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_03,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250188
X-Spamd-Bar: ---
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: U2ZUZC4EV2AXEOCU3UOI3TCVPVNL6WR3
X-Message-ID-Hash: U2ZUZC4EV2AXEOCU3UOI3TCVPVNL6WR3
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:41:09 +0000
CC: Bjorn Andersson <andersson@kernel.org>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] accel/qda: Add Qualcomm QDA DSP accelerator driver docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U2ZUZC4EV2AXEOCU3UOI3TCVPVNL6WR3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[1197];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,quicinc.com];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: BFCF1412268
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBGZWIgMjUsIDIwMjYgYXQgMTE6MTY6MjZBTSAtMDgwMCwgVHJpbG9rIFNvbmkgd3Jv
dGU6DQo+IE9uIDIvMjUvMjAyNiA3OjEyIEFNLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6DQo+ID4g
T24gV2VkLCBGZWIgMjUsIDIwMjYgYXQgMDc6NDc6MDhQTSArMDUzMCwgRWthbnNoIEd1cHRhIHdy
b3RlOg0KPiA+Pg0KPiA+Pg0KPiA+PiBPbiAyLzI0LzIwMjYgOTowMyBBTSwgVHJpbG9rIFNvbmkg
d3JvdGU6DQo+ID4+PiBPbiAyLzIzLzIwMjYgMTE6MDggQU0sIEVrYW5zaCBHdXB0YSB3cm90ZToN
Cj4gPj4+PiBBZGQgaW5pdGlhbCBkb2N1bWVudGF0aW9uIGZvciB0aGUgUXVhbGNvbW0gRFNQIEFj
Y2VsZXJhdG9yIChRREEpIGRyaXZlcg0KPiA+Pj4+IGludGVncmF0ZWQgaW4gdGhlIERSTSBhY2Nl
bCBzdWJzeXN0ZW0uDQo+ID4+Pj4NCj4gPj4+PiBUaGUgbmV3IGRvY3MgaW50cm9kdWNlIFFEQSBh
cyBhIERSTS9hY2NlbC1iYXNlZCBpbXBsZW1lbnRhdGlvbiBvZg0KPiA+Pj4+IEhleGFnb24gRFNQ
IG9mZmxvYWQgdGhhdCBpcyBpbnRlbmRlZCBhcyBhIG1vZGVybiBhbHRlcm5hdGl2ZSB0byB0aGUN
Cj4gPj4+PiBsZWdhY3kgRmFzdFJQQyBkcml2ZXIgaW4gZHJpdmVycy9taXNjLiBUaGUgdGV4dCBk
ZXNjcmliZXMgdGhlIGRyaXZlcg0KPiA+Pj4+IG1vdGl2YXRpb24sIGhpZ2gtbGV2ZWwgYXJjaGl0
ZWN0dXJlIGFuZCBpbnRlcmFjdGlvbiB3aXRoIElPTU1VIGNvbnRleHQNCj4gPj4+PiBiYW5rcywg
R0VNLWJhc2VkIGJ1ZmZlciBtYW5hZ2VtZW50IGFuZCB0aGUgUlBNc2cgdHJhbnNwb3J0Lg0KPiA+
Pj4+DQo+ID4+Pj4gVGhlIHVzZXItc3BhY2UgZmFjaW5nIHNlY3Rpb24gZG9jdW1lbnRzIHRoZSBt
YWluIFFEQSBJT0NUTHMgdXNlZCB0bw0KPiA+Pj4+IGVzdGFibGlzaCBEU1Agc2Vzc2lvbnMsIG1h
bmFnZSBHRU0gYnVmZmVyIG9iamVjdHMgYW5kIGludm9rZSByZW1vdGUNCj4gPj4+PiBwcm9jZWR1
cmVzIHVzaW5nIHRoZSBGYXN0UlBDIHByb3RvY29sLCBhbG9uZyB3aXRoIGEgdHlwaWNhbCBsaWZl
Y3ljbGUNCj4gPj4+PiBleGFtcGxlIGZvciBhcHBsaWNhdGlvbnMuDQo+ID4+Pj4NCj4gPj4+PiBG
aW5hbGx5LCB0aGUgZHJpdmVyIGlzIHdpcmVkIGludG8gdGhlIENvbXB1dGUgQWNjZWxlcmF0b3Jz
DQo+ID4+Pj4gZG9jdW1lbnRhdGlvbiBpbmRleCB1bmRlciBEb2N1bWVudGF0aW9uL2FjY2VsLCBh
bmQgYSBicmllZiBkZWJ1Z2dpbmcNCj4gPj4+PiBzZWN0aW9uIHNob3dzIGhvdyB0byBlbmFibGUg
ZHluYW1pYyBkZWJ1ZyBmb3IgdGhlIFFEQSBpbXBsZW1lbnRhdGlvbi4NCj4gPj4+IFNvIGV4aXN0
aW5nIGFwcGxpY2F0aW9ucyB3cml0dGVuIG92ZXIgY2hhcmFjdGVyIGRldmljZSBVQVBJIG5lZWRz
IHRvIGJlDQo+ID4+PiByZXdyaXR0ZW4gb3ZlciBuZXcgVUFQSSBhbmQgaXQgd2lsbCBiZSBicm9r
ZW4gb25jZSB0aGlzIGRyaXZlciBnZXRzDQo+ID4+PiBtZXJnZWQ/IEFyZSB3ZSBnb2luZyB0byBr
ZWVwIGJvdGggdGhlIGRyaXZlcnMgaW4gdGhlIExpbnV4IGtlcm5lbA0KPiA+Pj4gYW5kIG5vdCBk
ZXByZWNhdGUgdGhlIC9jaGFyIGRldmljZSBvbmU/IA0KPiA+Pj4NCj4gPj4+IElzIFF1YWxjb21t
IGdvaW5nIHRvIHByb3ZpZGUgdGhlIHdyYXBwZXIgbGlicmFyeSBpbiB0aGUgdXNlcnNwYWNlDQo+
ID4+PiBzbyB0aGF0IGV4aXN0aW5nIGFwcGxpY2F0aW9ucyBieSBvdXIgY3VzdG9tZXJzIGFuZCBk
ZXZlbG9wZXJzDQo+ID4+PiBrZWVwIHdvcmtpbmcgdy8gdGhlIG5ld2VyIGtlcm5lbCBpZiB0aGUg
Y2hhciBpbnRlcmZhY2UgYmFzZWQNCj4gPj4+IGRyaXZlciBnZXRzIGRlcHJlY2F0ZWQ/IEl0IGlz
IG5vdCBjbGVhciBmcm9tIHlvdXIgdGV4dCBhYm92ZS4gDQo+ID4+IFRoYW5rcyBmb3IgcmFpc2lu
ZyB0aGlzLCBUcmlsb2suDQo+ID4+DQo+ID4+IFRoaXMgaXMgb25lIG9mIHRoZSBvcGVuIGl0ZW1z
IHRoYXQgSSBoYXZlLiBJJ20gbm90IGV4YWN0bHkgc3VyZSB3aGF0IHdvdWxkIGJlIHRoZQ0KPiA+
PiBhY2NlcHRhYmxlIHdheSBmb3IgdGhpcy7CoA0KPiA+Pg0KPiA+PiBBcyB5b3UgbWVudGlvbmVk
LCBhcHBsaWNhdGlvbnMgdGhhdCByZWx5IG9uIC9kZXYvZmFzdHJwYyogbWlnaHQgbm90IHdvcmsg
b24gUURBDQo+ID4+IHdpdGhvdXQgbW9kaWZpY2F0aW9uLg0KPiA+Pg0KPiA+PiBJIHdhcyB0aGlu
a2luZyBpbiB0aGUgc2FtZSBsaW5lcyBhcyB5b3UgaGF2ZSBtZW50aW9uZWQgYW5kwqAgaGF2aW5n
IHNvbWUgc2hpbS9jb21wYXQNCj4gPj4gZHJpdmVyIHRvIHRyYW5zbGF0ZSBGYXN0UlBDIFVBUEkg
dG8gUURBLiBUaGUgY29tcGF0IGRyaXZlciB3b3VsZCBleHBvc2UgdGhlIGV4aXN0aW5nDQo+ID4+
IGNoYXJhY3RlciBkZXZpY2VzIGFuZCByb3V0ZSB0aGUgY2FsbHMgdG8gUURBLiBUaGUgY29tcGF0
IGRyaXZlciBjb3VsZCBiZSBidWlsdCB2aWEgS2NvbmZpZy4NCj4gPj4NCj4gPiANCj4gPiBUaGlz
IGlzIGEgZnVuZGFtZW50YWwgcmVxdWlyZW1lbnQsIHlvdSBuZWVkIHRvIGFkZHJlc3MgdGhpcyBp
biBvcmRlciBmb3INCj4gPiB0aGlzIHRvIG1vdmUgZm9yd2FyZC4NCj4gPiANCj4gPiBXaGljaCBt
YWtlcyBtZSB3b25kZXIgaWYgaXQgd291bGQgYmUgcG9zc2libGUgdG8gcmVhY2ggYW4gYWNjZWwg
ZHJpdmVyDQo+ID4gdGhyb3VnaCBpbmNyZW1lbnRhbCB0cmFuc2l0aW9uIG9mIHRoZSBjdXJyZW50
IGRyaXZlciwgaW5zdGVhZCBvZiBqdXN0DQo+ID4gZHJvcHBpbmcgaW4gYSBmZXcgdGhvdXNhbmQg
bGluZXMgb2YgbmV3IGNvZGUvZGVzaWduLg0KPiA+IA0KPiA+PiBIb3dldmVyLCBJIGhhdmVu4oCZ
dCBlbmNvdW50ZXJlZCBhbiBleGFtcGxlIG9mIHN1Y2ggYSBVQVBJ4oCRdHJhbnNsYXRpb24gZHJp
dmVyIGluIHRoZSBrZXJuZWwNCj4gPj4gYmVmb3JlLCBzbyBJIHdvdWxkIHdhbnQgZ3VpZGFuY2Ug
ZnJvbSBtYWludGFpbmVycyBvbiB3aGV0aGVyIHRoaXMgaXMgYW4gYWNjZXB0YWJsZQ0KPiA+PiBt
b2RlbCBvciBub3QuDQo+ID4+DQo+ID4+IFJlZ2FyZGluZyB5b3VyIHF1ZXN0aW9uIGFib3V0IGxp
YnJhcnksIGFsbCB0aGUgQVBJcyBleHBvc2VkIGJ5IGdpdGh1Yi9mYXN0cnBjIGxpYnJhcnkgYXJl
IGtlcHQNCj4gPj4gdW5jaGFuZ2VkIGluIHRlcm1zIG9mIGRlZmluaXRpb25zIGFuZCBleHBlY3Rh
dGlvbi4gVGhlIHNhbWUgcHJvamVjdCBjYW4gYmUgYnVpbGQgZm9yIGJvdGgNCj4gPj4gRmFzdFJQ
QyBhbmQgUURBIGJhc2VkIG9uIGNvbmZpZ3VyZSBvcHRpb25zLiBTbywgdGhlIGFwcGxpY2F0aW9u
cyB1c2luZyBnaXRodWIvZmFzdHJwYyBzaG91bGQNCj4gPj4gbm90IGZhY2UgYW55IHByb2JsZW0g
aWYgdGhlIGxpYnMgaXMgYnVpbHQgd2l0aCBwcm9wZXIgY29uZmlndXJlIG9wdGlvbnMuDQo+ID4+
DQo+ID4gDQo+ID4gWW91J3JlIGFzc3VtaW5nIHRoYXQgdGhlIGtlcm5lbCBhbmQgdXNlcnNwYWNl
IGFyZSBhIHVuaWZpZWQgcGllY2Ugb2YNCj4gPiBzb2Z0d2FyZSwgdGhleSBhcmUgbm90LiBJdCBt
dXN0IGJlIHBvc3NpYmxlIGZvciBtZSB0byBpbnN0YWxsIGEgbmV3DQo+ID4ga2VybmVsIHBhY2th
Z2Ugd2l0aG91dCBoYXZpbmcgdG8gcmVwbGFjZSB0aGUgdXNlcnNwYWNlIGxpYnJhcmllcy4NCj4g
DQo+IFRoYW5rIHlvdSBCam9ybiBmb3IgcHJvdmlkaW5nIHRoZSBpbnB1dHMuIA0KPiANCj4gSSBh
bHNvIGZvcmVzZWUgdGhhdCB3ZSB3aWxsIGJlIHN0b3AgYWRkaW5nIChvciBhbHJlYWR5IGhhcHBl
bmVkKSBuZXcgZmVhdHVyZXMNCj4gaW50byB0aGUgZXhpc3RpbmcgZmFzdHJwYyBkcml2ZXIsIHNv
IGNhbGxpbmcgdGhlIG5ldyBkcml2ZXIgYXMgYW4gYWx0ZXJuYXRpdmUNCj4gaXMgaW4gb3ZlcnNv
bGQgY2F0ZWdvcnkuDQo+IA0KPiBZb3UgYXJlIHByZXR0eSBtdWNoIGJlZ2FuIHRoZSBkZXByZWNh
dGluZyB0aGUgZXhpc3RpbmcgZmFzdHJwYyBkcml2ZXIsIHNvIGxldCdzDQo+IGp1c3QgbWVudGlv
biBpdCBpZiB0aGF0IGlzIHRoZSBjYXNlIGFuZCBwcm92aWRlIG1pZ3JhdGlvbi9zaGltIHBhdGgg
c28gdGhhdA0KPiBleGlzdGluZyBiaW5hcmllcyBkb2Vzbid0IGJyZWFrLg0KDQpJIGFncmVlIHRo
YXQgd2UgbmVlZCBhIG1pZ3JhdGlvbiBwYXRoLCBidXQgSSdkIHJlYWxseSBmb2N1cyBvbiBpdCBh
ZnRlcg0KZ2V0dGluZyBhdCBsZWFzdCBiYXNpYyBwYXJ0cyBvZiB0aGUgUURBIHJldmlld2VkIGFu
ZCBhZ3JlZWQgdXBvbi4NCk90aGVyd2lzZSB0aGUgc2hpbSBsYXllciB3aWxsIGJlIHJld29ya2Vk
IGFnYWluIGFuZCBhZ2FpbiB3aXRoIG5vDQppbW1lZGlhdGUgYWRkZWQgYmVuZWZpdC4NCg0KLS0g
DQpXaXRoIGJlc3Qgd2lzaGVzDQpEbWl0cnkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

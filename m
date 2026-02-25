Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPfpG7IU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:56:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CB2412259
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:56:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 311684514D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:56:17 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 3E3A43ED23
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:12:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=WCm1INdN;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=cyBmnajI;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PGkLZL3632336
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:12:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Lg9srVmRK+oZJLWJq17xoEHm
	pPxqRtxhu3c9PChBOMk=; b=WCm1INdNRRhbh84DyjMSXzpeUoIeQXVsQgHBlF1h
	Ndkvbhvx3lXr7E9lEF/C2lv7P1XNL91hKJWoBQPh0Ju3cQ8qDmL8N4hvHi5mx4Xb
	xpvtgujVzIept+Zev/RH/7hr17o5f9CCDpLLq/c7ZicXw3Ga2LdzZX3eXzwD8av9
	9hGSbTuWBNDjgYpAJRgqznmnbhInDU8kIHwTTvMK007WXU74W2nrIUXjgZRCiyr8
	ZDgLf3CSVdKV8UTUfhoIJCPhtWkXt+diNrnOdGZ/33Tl3HfsLLImO8fyTA3KdLeB
	qw/AJbDZk+cn0Otpvkc1kuFzAmdGKQy61y9ZbdjiYvRPZQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj4w4rgks-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:12:17 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70ed6c849so5286003885a.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 11:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772046737; x=1772651537; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Lg9srVmRK+oZJLWJq17xoEHmpPxqRtxhu3c9PChBOMk=;
        b=cyBmnajILQcx4gbh5Qu8C6CPFv6Fy5jGMFIiqFuw4edq01DWzDws+blrIJ1rqK+MH7
         indAy9usE8IIkAI7MKtPBwgYM+qCROld48BesV0DkjbsN2yeOdPDmjxYqoaD5YcOjzDm
         byh2j1K/FRrViiVrBoTwoNc782vsR+xs28UGxNcEChwsEan2MD7ynioC2JdgBIrEWPp0
         OqI8D1kPVM+0v91hy6oxaDs15tB+C+tm84arvH3u/IrRe6TIC9ebBrwmsvl2p/fM8hpM
         fH7WkQU8X9/YDms3heX5V2sK5evhGe0Zanrqozet1SKuHikf42kGHOl7lKe6HNMd0zar
         xGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772046737; x=1772651537;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lg9srVmRK+oZJLWJq17xoEHmpPxqRtxhu3c9PChBOMk=;
        b=GzjOLSl3t0raqUNTpeD1Cmy6IviY0ksDYWI0BKSBbCsFLFSED/FxxRaoFxLhw3DrQX
         pJ7nRSQfx5puPg2gyhmE3+Rrh5PVswhpae6DLS+N6DzecF6IT4iX3nCDpDRdXhFhIpim
         CtP4Ctdy1y5tnA49TaywpCFGG3AsdzLuGnA7Ms5fyV2PjeC60/BFxZuNNzIR2us4s5aH
         lUXOAgqAN2fjMFuKMNjz8X71XudPMaTYKKtchXfuJy7BGFxOHn90Mn9awn+/ucypSd60
         gBrR1YCGdU+kFAgaa7pbfNt6q4gnzPwCtKWG9exWT9aaGl1Vw7U75T6P2ArG0oSHVt9o
         fDxw==
X-Forwarded-Encrypted: i=1; AJvYcCUcSwe2NGp2bp6Foo4Hx+Uk8e7/nsJAYcC3LMF3IvY1jR4/2X5483N2Z0vgpD+XzFvom328u9//me+zOm8R@lists.linaro.org
X-Gm-Message-State: AOJu0Yw/1jxEquTbKSzxLzmRTKQQl0gXo6R6rj7JMzO8hLXzIhRdztv/
	P3PLL4k84DLfBvTdKsvscJDqeuWmsft181yjxYT3AZyvqOdG+bO5e3jUIu1hRKTbkD6oLEQngnZ
	Xxn76DOTYHBNuy90CH7JUdF1GSOIcygTF9KrlBkYt3a8uYPSF9N5xRFucCkaWJdfLpWH/Bw==
X-Gm-Gg: ATEYQzwurQKz/1ho6eVIhFLD9LwdkkXDhxcYNYkSGzu9MvrknZDdGPHB369D4RojAyC
	MwzHNwo2I+bnog+D4bOo9aGphmNq6PwT57H6Wn0WK7DdWtE9Zs6L+Jq0X+/Vum82fdl7l1QNwW3
	jIMbn8CGSRrPKH9U5O+O4odnB5BaHxIU7tYbwPuVKT5twO9HTAqq8ycZiBEsXeFk93c7lansAHk
	h/u59UiZSb+7kdLnzkKTELmSstFmnLKHJFU1lnfLoMaknRiw7Pj/bW0qujkqQ1Qg95H6Xy1tLyJ
	1eBvzf3QnbhAp3wnx+hiJrWTymFe+M1AglsQigUyUBEgs8eQN3l55MFwSGFv/Z6D0CRm+Vx3HaJ
	Pf4eYYeVkY5pOD67XZEtJmS+PzlEoXdacUMbkJnKYUdfy9qOt2b8gADBCtvQ0yzjIIVZCTKtN9g
	DNx+Lpv9Qwuw9CnthtFlc/JKIinpj/SHvW5ng=
X-Received: by 2002:a05:620a:440a:b0:8a2:ee8:e7cc with SMTP id af79cd13be357-8cb8c9cbf76mr2070542285a.5.1772046736863;
        Wed, 25 Feb 2026 11:12:16 -0800 (PST)
X-Received: by 2002:a05:620a:440a:b0:8a2:ee8:e7cc with SMTP id af79cd13be357-8cb8c9cbf76mr2070536685a.5.1772046736335;
        Wed, 25 Feb 2026 11:12:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a7a1feb7sm30070291fa.29.2026.02.25.11.12.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 11:12:15 -0800 (PST)
Date: Wed, 25 Feb 2026 21:12:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Message-ID: <vgcb4n6ciybslspdoa5fkvb5zwz7xon6tnxjmxxzkqutabgoq2@sgbxxtgdyeig>
References: <vU2QyEVqOu-D3eGp7BZFICUeauxL32bwWzeidOAijoeVaJTk8KcRVsaQQD4MdFQEcaQTZ5RkzRsz9-Lhl1qsqg==@protonmail.internalid>
 <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <172a9083-8cd6-428f-bd3d-d831e610b37b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <172a9083-8cd6-428f-bd3d-d831e610b37b@linaro.org>
X-Proofpoint-ORIG-GUID: 7_uKO99BlClN6z6nNy-NE-I0lrbkUhGu
X-Authority-Analysis: v=2.4 cv=IqMTsb/g c=1 sm=1 tr=0 ts=699f4991 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=NEAV23lmAAAA:8
 a=DISFzqtZAAAA:8 a=jajewSGiAXp_dDDQNc8A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=aug85vrO5LANNmmtkfAW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDE4MCBTYWx0ZWRfX28z8ztO5FXjM
 5uL59bCvsaeexTkF1Fu/DA+DCZFcBKdZOr071Ojd32gzRqbR7toiU0ICIhwqq48AGxdHED5jYWN
 9zMuDGxLmTgOWLRg2QEaJOcqPmqqXmL9dev+dHyKCYOKQsZsw0MXbzj6WIUUxrdZpxVoClp1at1
 MfKuhHj9SdMz5TW4jvoYZSPXmkCN5LGyJu5V8hB1dJwvSkVCvoK0tgW3zDvCzBhbeJyA8P5eg0R
 Xqh0Tbvp4jSzqwf51wi1iDrFwJ3ee9i0z2PgbkOUvy9LwNdL0ORDXkwDCrcLi39i3NZbhVeOkRK
 ZlZXStCmBb3XiDupQRZQYal2XfSBddNzQqgpjN1xTm8SmwPq0R16JZLz4fFPLPLlse2sEX6qXgw
 ZAIibV6Cq1zAbNCioJXAc/CjhlxlEyN/OdJrb4vx1wpO/eEnHKZNyzQ3QTLOiXSz43SOh48A4m+
 VNZYaS+PuYQs76SCVCg==
X-Proofpoint-GUID: 7_uKO99BlClN6z6nNy-NE-I0lrbkUhGu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_02,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0 adultscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250180
X-Spamd-Bar: -----
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: W4UVBOZVNYKDY56L5JRQT5UAYXNBTFEI
X-Message-ID-Hash: W4UVBOZVNYKDY56L5JRQT5UAYXNBTFEI
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:41:08 +0000
CC: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/18] accel/qda: Introduce Qualcomm DSP Accelerator driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W4UVBOZVNYKDY56L5JRQT5UAYXNBTFEI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[1197];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,tomeuvizoso.net:url]
X-Rspamd-Queue-Id: 28CB2412259
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Feb 25, 2026 at 01:42:19PM +0000, Bryan O'Donoghue wrote:
> On 23/02/2026 19:08, Ekansh Gupta wrote:
> > User-space staging branch
> > ============
> > https://github.com/qualcomm/fastrpc/tree/accel/staging
> 
> What would be really nice to see would be mesa integration allowing
> convergence of the xDSP/xPU accelerator space around something like a
> standard.

I'd say, writing Mesa compiler to build Hexagon code for Teflon frontend
would be a nice item. It would probably also allow us to use DSPs for
OpenCL acceleration. But, I'd say, it's a separate topic.

> 
> See: https://blog.tomeuvizoso.net/2025/07/rockchip-npu-update-6-we-are-in-mainline.html
> 
> ---
> bod

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

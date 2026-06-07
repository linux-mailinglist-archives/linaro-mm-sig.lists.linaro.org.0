Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7IHTMFJKKWp1TwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:28:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8B8668CAF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:28:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=ZWryxAUI;
	dkim=fail ("body hash did not verify") header.d=oss.qualcomm.com header.s=google header.b=Wf7Wka2r;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7BED040A7B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:28:17 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id A406B3F960
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Jun 2026 21:14:17 +0000 (UTC)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 657EkPlh441919
	for <linaro-mm-sig@lists.linaro.org>; Sun, 7 Jun 2026 21:14:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bVcqkhgaJSPD6A1e5VhyvGpy
	bYdJrSVM+2Bo77SiPkk=; b=ZWryxAUIOTOp6rfwOhdKZBk+CQzQ6VsRmUz1XzC5
	8RSgEsq/Ta0ZNlJ9UosaUKDUX3QJGyQfcB/QkOwozfF/wTLsUnsSLI/j8EDS1Hna
	JIdloOCxU+03Z8Kaync5G/qGsYj9UAdOnUn/kSX5fMzm10vt+rsGPZFWTjjRrtls
	q3s1WnzxmkO+WSaQT9LQHsZXj5M3tdPbCYkIfuWjDCyX3ts5bHj771OJQ16HzpjB
	Nx0dpheSf+Of+5+Fm0dnYvqDtUH08i6XTM+v5Nk53ylSPDoS+wlAK7CaJUGGMXqC
	Vl6/7lCtq9My06VETGlPcFoSnGxMpwKyUAqOiUAevwU8og==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4embs1cnxd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Sun, 07 Jun 2026 21:14:16 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-6cfd65ab97aso5418752137.1
        for <linaro-mm-sig@lists.linaro.org>; Sun, 07 Jun 2026 14:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780866855; x=1781471655; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bVcqkhgaJSPD6A1e5VhyvGpybYdJrSVM+2Bo77SiPkk=;
        b=Wf7Wka2ryY1ZTTbWtbbTfaHucAFPo/GjMueNEDIICPXYJImURK3xW9VklTwEU94I+a
         aiqKANASIPQKRzmEvHYGKzM/hqx8EGmdf8wD85JAr3zd5IQ7Q9XFoOLNEeNdWe4fRUwF
         AHbeCmdkcvDkql74IfHkKpiCjD1Jvu8Gfd7obUCSSE+9YUSUwGW+vLiHqcqvjdNrvfwR
         xYPwLWSkL4RkwUEUkr+yYkIR45qakdjwyYW7KZ0Iw0HVPtwvCYTAmNmULHD8NPSF4TgU
         qeScZ98wWEayhPAtJENMoQml6sE5R1MuEWD+FOOAhgmdWzDECibbQVWYJJcQF6ncsLED
         W9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780866855; x=1781471655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bVcqkhgaJSPD6A1e5VhyvGpybYdJrSVM+2Bo77SiPkk=;
        b=okZcfy64fBKIiAv3kusXTCiEx41VjGOmYkAi64xo2jT/X0gH/WaHJpmF0cB1aZVGq+
         jGg0ofa6pxcMfEyjRa5ActEbsXXHdYKuOdvD4TSd9QB3SW+cE4EahvslQBDJoNn4al2k
         EyuXpmDutJTa4TsaUx/eIq/jfPjHGdtBoGLBRMc4mN0KlM69OCRc4HQ9W1C2XDAuLKIp
         GzjvVKgqjmMNUVTsk9IZ7JFjjZtutmXs8f21i1voDDQT4BotFC/b6wVoqB422ejp5I0K
         G5N+hGEB1JBEjvbCjQSlxwB1iuCX0zp3VgEFO+gaF5hOgSPubtA40A15da1BveG6dQg/
         vavQ==
X-Forwarded-Encrypted: i=1; AFNElJ9QbsOoMqMVwaKtLGYFUrBz2OsTAgyJdRiLbIi1ZNY6hNq4PI4MiSmVSKHpZcCLlcy3EJa/9E9hBiSrzx8V@lists.linaro.org
X-Gm-Message-State: AOJu0YzExjlq0s7/eOtJgQNoQmUFcKhe30x8uz8l38A6tTiRlacalesF
	IzrVIh06Ipo4jGl5pD93+tn+oPJbtq9LrpjVzCkpcACW/O2FNLXen9XH2w2naZti5XfsJU+VCzx
	xl93G3cGCO/jjGeo/RresR5ruWk+8ZusGX8QKeAcd9qEsGEUFBtuPOSh2HWxe5ZLd7JmBmQ==
X-Gm-Gg: Acq92OEtJeBHd//faRmOtRoXJaGUeQqX73H9yBmC5P7C2kvCSunPxpW0W6Fs9lzxXeE
	bKMVcDA+gqEJyUeS1cgfmWpEVdiUd70CxgWlDqGZ3sb4KSMBPIFbEjt9AXWhIbrrxlfq2F84p+s
	Bhn69KT4cAkavb/VI/N+snGSLsHPJp0q1/1A9ud3aRiZjYQcCeeNzXkcRiHnAn2Gm9txojqe6xw
	UNzdXYxDtJDCXfeog3cuGvTovKY08Yxof+qQnmlG2sJ8jkUl32+qpigoorBZA6+PR10N744H49O
	MRLzcyfrjyGfnqtB22tBZVlpED6ooBTZTnWY3RR2Y/0a0qyAkxLuijRB+5K4q1mUtvrYWP5Bg/R
	h9Ni9qM+mKy3x19lb63dRdZOMOqKXkDsSV1O8m8hdJWrCvrn77r6AnjQ3wbRUY7pDoWqah/FIbO
	2IIPtACxX41DV5x1Y3qjp7qs8KxNy3HI7kKcuFDDIvLiMhdA==
X-Received: by 2002:a05:6102:c91:b0:6cc:16d2:3100 with SMTP id ada2fe7eead31-6fef1098102mr6567925137.13.1780866855335;
        Sun, 07 Jun 2026 14:14:15 -0700 (PDT)
X-Received: by 2002:a05:6102:c91:b0:6cc:16d2:3100 with SMTP id ada2fe7eead31-6fef1098102mr6567897137.13.1780866854873;
        Sun, 07 Jun 2026 14:14:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b8edf4fsm3319707e87.16.2026.06.07.14.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 14:14:13 -0700 (PDT)
Date: Mon, 8 Jun 2026 00:14:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <q2q6tfnas3kikapwehbp6q7mykvk2wbuvn6ypbzc5ta7azh65w@wdwphde7gcxc>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-12-b2d984c297f8@oss.qualcomm.com>
 <43a7laqb7mnrvleunnmbxwhvzr6w3au4ofjri4r4ap7clsx6mc@jxqlr4a2lw56>
 <ba003d7d-03f5-4572-8321-3d1f666c8c27@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba003d7d-03f5-4572-8321-3d1f666c8c27@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA3MDIxNCBTYWx0ZWRfX1rNC9JhOjDE9
 Tnnh+ZGdjrwRBnQsEdMSUlV6t2g8QFzWhlZiF+pHAMtsMeYDuu1Jb7eM5q9lt4sLO8TcMmmhVWj
 Sv6X3Mg7T7DdPeW825ZxMRWJyJJ0gVi96ueVVpZ5owDwc5MwiEPCyy+1ow/jXPfLfKP1UFAFKbx
 XAgKMTiohpPXWVx31baybl0yF0/j+E4RBqETP9EocM7avtQfb70XbLPUwuWQkpqYquOkIdOrEN3
 Wuo7IDPPtOLayJwWKpCnj+90J7eBtFOFqN5iyrPKpFU1zcx9oPEFKe3DKcM3+NHzZxp/Iq3WVKB
 srRxpkoWIM8qdyr2GFVG98Il+38Y/UKchpEPQPN9AHXRRGiMtF3CrA2pTNRlT5kl+9RjG2enLdx
 RVfULowhWBmpMc//kq2OouFOD2serhEdz5eVFl0sdf9w2gCeNpkxECAYdVlfNiuU/46VOrOYeco
 pHe2ANM45L0W/pMoCZQ==
X-Authority-Analysis: v=2.4 cv=CeY4Irrl c=1 sm=1 tr=0 ts=6a25df28 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=SKmDr6HH6J8_EXO89VAA:9 a=CjuIK1q_8ugA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-ORIG-GUID: rjiQo0SjfJxcAd82LCe6_qoJngPRkdiq
X-Proofpoint-GUID: rjiQo0SjfJxcAd82LCe6_qoJngPRkdiq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-07_04,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606070214
X-Spamd-Bar: ---
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: C74NAHAIK4E2W2YSMEZT5JD4VB55NU7I
X-Message-ID-Hash: C74NAHAIK4E2W2YSMEZT5JD4VB55NU7I
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:27:22 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/15] accel/qda: Add FastRPC invocation support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C74NAHAIK4E2W2YSMEZT5JD4VB55NU7I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	DATE_IN_PAST(1.00)[62];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ekansh.gupta@oss.qualcomm.com,m:ogabbay@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:quic_bkumar@quicinc.com,m:quic_chennak@quicinc.com,m:srini@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,oss.qualcomm.com:from_mime,linaro.org:email,wdwphde7gcxc:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5F8B8668CAF

On Thu, Jun 04, 2026 at 10:39:14AM +0530, Ekansh Gupta wrote:
> On 20-05-2026 19:26, Dmitry Baryshkov wrote:
> > On Tue, May 19, 2026 at 11:46:02AM +0530, Ekansh Gupta via B4 Relay wrote:
> >> From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> >>
> >> Implement the FastRPC remote procedure call path, allowing user-space
> >> to invoke methods on the DSP via DRM_IOCTL_QDA_REMOTE_INVOKE.
> >>
> >> qda_fastrpc.c / qda_fastrpc.h
> >>   Implements the FastRPC protocol layer: argument marshalling
> >>   (qda_fastrpc_invoke_pack), response unmarshalling
> >>   (qda_fastrpc_invoke_unpack), and invocation context lifecycle
> >>   management. Each invocation allocates a fastrpc_invoke_context
> >>   which tracks buffer descriptors, GEM objects, and the completion
> >>   used to synchronise with the DSP response.
> >>
> >>   Buffer arguments are handled in three ways:
> >>   - DMA-BUF fd: imported via PRIME, IOMMU-mapped dma_addr used
> >>   - Direct (inline): copied into the GEM-backed message buffer
> >>   - DMA handle: fd forwarded to DSP, physical page descriptor computed
> > 
> > No. This needs to go away. The QDA should support only one way to pass
> > data - via the GEM buffers. Everything else should be handled by the
> > shim layer, etc.
> each FD passed here is a GEM buffer. The reason to pass fd is that there
> are some APIs on DSP side which takes fd as an argument and the user
> might use the same on their skel implementation. So in this case the
> remote call will take fd to DSP and the skel implementation will use the
> FD.>

Then handle it all on the userspace side. In the end, bad library API is
not a reason to complicate kernel API and kernel driver.

> >> +#define FASTRPC_SCALARS(method, in, out) \
> >> +		FASTRPC_BUILD_SCALARS(0, method, in, out, 0, 0)
> >> +
> >> +/**
> >> + * struct fastrpc_buf_overlap - Buffer overlap tracking structure
> >> + *
> >> + * Tracks overlapping buffer regions to optimise memory mapping and avoid
> >> + * redundant mappings of the same physical memory.
> > 
> > WHat for? Even if this is a valid optimization, implement it as a
> > subsequent patch. The first goal should be very simple - get GEM buffers
> > from the app, pass them to the DSP, read the results.
> yes, this implementation is mimicking the existing fastrpc design where
> non-FD buffers are also supported. I am currently evaluating the
> maintainance of such buffers from userspace side and trying to
> understand the impacts of the same. I am planning to bring it as a
> future enhancement if there is no regression.>

Other way around. Drop it for now and bring it back if it has any
positive impact.

> >> + */
> >> +struct fastrpc_buf_overlap {
> > 
> > Stop clashing the names with the existing fastrpc driver.
> ack.>
> >> +	/** @start: Start address of the buffer in user virtual address space */
> >> +	u64 start;
> >> +	/** @end: End address of the buffer in user virtual address space */
> >> +	u64 end;
> >> +	/** @raix: Remote argument index associated with this overlap */
> >> +	int raix;
> >> +	/** @mstart: Start address of the mapped region */
> >> +	u64 mstart;
> >> +	/** @mend: End address of the mapped region */
> >> +	u64 mend;
> >> +	/** @offset: Offset within the mapped region */
> >> +	u64 offset;
> >> +};
> >> +
> >> +/**
> >> + * struct fastrpc_remote_dmahandle - Remote DMA handle descriptor
> >> + */
> >> +struct fastrpc_remote_dmahandle {
> >> +	/** @fd: DMA-BUF file descriptor */
> >> +	s32 fd;
> >> +	/** @offset: Byte offset within the DMA-BUF */
> >> +	u32 offset;
> >> +	/** @len: Length of the region in bytes */
> >> +	u32 len;
> >> +};
> >> +
> >> +/**
> >> + * struct fastrpc_remote_buf - Remote buffer descriptor
> >> + */
> >> +struct fastrpc_remote_buf {
> >> +	/** @pv: Buffer pointer (user virtual address) */
> >> +	u64 pv;
> >> +	/** @len: Length of the buffer in bytes */
> >> +	u64 len;
> >> +};
> >> +
> >> +/**
> >> + * union fastrpc_remote_arg - Remote argument (buffer or DMA handle)
> >> + */
> >> +union fastrpc_remote_arg {
> >> +	/** @buf: Inline buffer descriptor */
> >> +	struct fastrpc_remote_buf buf;
> >> +	/** @dma: DMA-BUF handle descriptor */
> >> +	struct fastrpc_remote_dmahandle dma;
> >> +};
> >> +
> >> +/**
> >> + * struct fastrpc_phy_page - Physical page descriptor
> >> + */
> >> +struct fastrpc_phy_page {
> >> +	/** @addr: Physical (IOMMU) address of the page */
> >> +	u64 addr;
> >> +	/** @size: Size of the contiguous region in bytes */
> >> +	u64 size;
> >> +};
> >> +
> >> +/**
> >> + * struct fastrpc_invoke_buf - Invoke buffer descriptor
> >> + */
> >> +struct fastrpc_invoke_buf {
> >> +	/** @num: Number of contiguous physical regions */
> >> +	u32 num;
> >> +	/** @pgidx: Index into the physical page array */
> >> +	u32 pgidx;
> >> +};
> >> +
> >> +/**
> >> + * struct fastrpc_msg - FastRPC wire message for remote invocations
> >> + *
> >> + * Sent to the remote processor via RPMsg. This is the exact layout
> >> + * the DSP expects; do not reorder or add fields without DSP firmware
> >> + * coordination.
> >> + */
> >> +struct fastrpc_msg {
> >> +	/** @remote_session_id: Session identifier on the remote processor */
> >> +	int remote_session_id;
> >> +	/** @tid: Thread ID of the invoking thread */
> >> +	int tid;
> >> +	/** @ctx: Context identifier for matching request/response */
> >> +	u64 ctx;
> >> +	/** @handle: Handle of the remote method to invoke */
> >> +	u32 handle;
> >> +	/** @sc: Scalars value encoding in/out buffer counts */
> >> +	u32 sc;
> >> +	/** @addr: Physical address of the message payload buffer */
> >> +	u64 addr;
> >> +	/** @size: Size of the message payload in bytes */
> >> +	u64 size;
> >> +};
> >> +
> >> +/**
> >> + * struct qda_msg - FastRPC message with kernel-internal bookkeeping
> >> + *
> >> + * The wire-format portion is kept in the embedded @fastrpc member (must
> >> + * be first) so that &qda_msg->fastrpc can be passed directly to
> >> + * rpmsg_send() without a copy.
> >> + */
> >> +struct qda_msg {
> >> +	/**
> >> +	 * @fastrpc: Wire-format message sent to the DSP via RPMsg.
> >> +	 * Must be the first member.
> >> +	 */
> >> +	struct fastrpc_msg fastrpc;
> >> +	/** @buf: Kernel virtual address of the payload buffer */
> >> +	void *buf;
> >> +	/** @phys: Physical/DMA address of the payload buffer */
> >> +	u64 phys;
> >> +	/** @ret: Return value from the remote processor */
> >> +	int ret;
> >> +	/** @fastrpc_ctx: Back-pointer to the owning invocation context */
> >> +	struct fastrpc_invoke_context *fastrpc_ctx;
> >> +	/** @file_priv: DRM file private data for GEM object lookup */
> >> +	struct drm_file *file_priv;
> >> +};
> >> +
> >> +/**
> >> + * struct fastrpc_invoke_context - Remote procedure call invocation context
> >> + *
> >> + * Maintains all state for a single remote procedure call, including buffer
> >> + * management, synchronisation, and result handling.
> >> + */
> >> +struct fastrpc_invoke_context {
> >> +	/** @node: List node for linking contexts in a queue */
> >> +	struct list_head node;
> >> +	/** @ctxid: Unique context identifier (XArray key shifted left by 4) */
> >> +	u64 ctxid;
> >> +	/** @inbufs: Number of input buffers */
> >> +	int inbufs;
> >> +	/** @outbufs: Number of output buffers */
> >> +	int outbufs;
> >> +	/** @handles: Number of DMA-BUF handle arguments */
> >> +	int handles;
> >> +	/** @nscalars: Total number of scalar arguments */
> >> +	int nscalars;
> >> +	/** @nbufs: Total number of buffer arguments (inbufs + outbufs) */
> >> +	int nbufs;
> > 
> > If it is inbufs + outbufs, why do you need it here?
> > 
> >> +	/** @pid: Process ID of the calling process */
> >> +	int pid;
> >> +	/** @retval: Return value from the remote invocation */
> >> +	int retval;
> >> +	/** @metalen: Length of the FastRPC metadata header in bytes */
> >> +	int metalen;
> > 
> > size_t, also why do you need it?
> > 
> >> +	/** @remote_session_id: Session identifier on the remote processor */
> >> +	int remote_session_id;
> >> +	/** @pd: Protection domain identifier encoded into the context ID */
> >> +	int pd;
> >> +	/** @type: Invocation type (e.g. FASTRPC_RMID_INVOKE_DYNAMIC) */
> >> +	int type;
> >> +	/** @sc: Scalars value encoding in/out buffer counts */
> >> +	u32 sc;
> > 
> > How is this different from the counts above?
> sc carries the method id and handle counts. The reason to maintain count
> separately is to avoid calculating it again and again.>

Is it just a sum of several values or something more complicated?

> >> +	/** @handle: Handle of the remote method being invoked */
> >> +	u32 handle;
> >> +	/** @crc: Pointer to CRC values for data integrity checking */
> >> +	u32 *crc;
> > 
> > Add it later. It's unused. Drop all unused fields.
> ack.>
> >> +	/** @fdlist: Pointer to array of DMA-BUF file descriptors */
> >> +	u64 *fdlist;
> > 
> > Why do you need DMA-BUFs in the invocation context? They all should be
> > GEM buffers.
> the reason is that the users are dependent on FDs as they can import
> buffers allocated from anywhere and there are DSP APIs which takes fd as
> an argument, so they might end up using the same in there skel
> implementation.>

No, DSP API can't take FD, they don't quite cross the OS and IOMMU
boundary. It's the userspace library API. Which might be improved,
rewritten, implemented underneath, etc. For the kernel side please,
pass _only_ GEM handles + offsets.

> >> +	/** @pkt_size: Total payload size in bytes */
> >> +	u64 pkt_size;
> >> +	/** @aligned_pkt_size: Page-aligned payload size for GEM allocation */
> >> +	u64 aligned_pkt_size;
> >> +	/** @list: Array of invoke buffer descriptors */
> >> +	struct fastrpc_invoke_buf *list;
> >> +	/** @pages: Array of physical page descriptors for all arguments */
> >> +	struct fastrpc_phy_page *pages;
> >> +	/** @input_pages: Array of physical page descriptors for input buffers */
> >> +	struct fastrpc_phy_page *input_pages;
> > 
> > I think you are trying to bring all the complexity from the old driver
> > with no added benefit. Please don't. Use the existing memory manager.
> > Let it handle all the gory details. If someting is not there, we should
> > consider extending GEM instead.
> I'm not changing the metadata format as the DSP might not understand the
> messages if we modify it.

Well, it's up to you to know if DSP will understand the message or not.
The probability ("might not") is not suitable here. Anyway, let's get
rid of the various data formats first, then maybe some of the items will
go away on their own.

> Also, the fd is still being used because of
> the client dependency on it. I'll check if there is any other logic that
> needs alteration here.>

If the client keeps on passing FD to the library calls, you can map
FD to GEM handles in the library code.

> >> +
> >> +static int fastrpc_context_get_id(struct fastrpc_invoke_context *ctx, struct qda_dev *qdev)
> >> +{
> >> +	int ret;
> >> +	u32 id;
> >> +
> >> +	if (!qdev)
> >> +		return -EINVAL;
> >> +
> >> +	ret = xa_alloc(&qdev->ctx_xa, &id, ctx, xa_limit_32b, GFP_KERNEL);
> >> +	if (ret)
> >> +		return ret;
> >> +
> >> +	ctx->ctxid = id << 4;
> > 
> > Why is it being shifted?
> this is to accomodate PD type>

Not really an answer.

> >> +	return 0;
> >> +}
> >> +
> > 
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id k4AMMUxLKWotUAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:32:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2DA668D4A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:32:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b="G0B0/CSr";
	dkim=fail ("body hash did not verify") header.d=oss.qualcomm.com header.s=google header.b=co29nlCf;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76C8C40A0A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:32:27 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 9150C404E3
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 09:38:30 +0000 (UTC)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65A7il4k867931
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 09:38:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fLahizlXX21JZl8j3A8UCWqbtcmXHv2dftjEyU0Kt2U=; b=G0B0/CSrpQkuFS4s
	a7qfxcN0hGzlTeeLtQn7ZxFbd7BJ44iouWigMU3FyRBO5CvV1leqGfgXIUANKPfB
	H4xA2PZ6Ph27nOAOBeI6Gp0IJQTBNxPiETVcGtpyuajkdnaPDkDI/F2KfuGeibzF
	SA3afuC617MKr6lpneo8IA/cbIktCcR/Sf1Na5b0GXr4K7ZbQs9oIg9sO40UmLDx
	FF3AJHxPjixGeBZEh2wAe9m1gp0j0KWoi2HI3JHFnwjAgccj9onPjDHJ9sZ4Tem/
	9GeJ3U5d7ipAXOZRQf33GQ5yVUTaCTtNJTZybBwguakynoj35oJn2vN8xSIficxU
	bcOB6w==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eq0kd96jc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 09:38:29 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-36bba9b849dso6312884a91.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 02:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781084308; x=1781689108; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fLahizlXX21JZl8j3A8UCWqbtcmXHv2dftjEyU0Kt2U=;
        b=co29nlCfXOim3dZRuZwVSYPZzVUyVJkDqlqSllofyGTkof2iJcHEQyDtX715AUrZrN
         IDsFVENbFMG4bC/xGvpS4DXsGH8u+Bb0iUMS6n0osTLXCGQPLEY9VqomABXu9Q+RTWAV
         sVqRt5vLi/gfHGfDs1D5AmZ6BywA1OJAqD0fFfnUXprcZ/LbszLmW3usOMgp3iWjcbK6
         hzHyVuOb5PTwpvOxxHnisZ4BxHylMl0UPmxwU6+s3hXkB8J2fiIbxtcDq4hXjWp0InUO
         3QEFVP76aU1EvY/Qt2YpGRZa6sberq/VkhIfIbaHawqE/Bn6gi0AoF0+DCkSu30LK+aQ
         JKqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781084308; x=1781689108;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fLahizlXX21JZl8j3A8UCWqbtcmXHv2dftjEyU0Kt2U=;
        b=BTgCWqdhdFpd86ZT3Pq0GSG8s8s1ZU+hjlJ4K+bzBuAnl+CjiAn2qcL3jo+aJ32QW5
         W91XFcsI6qnHMztrQNH+xUXascYzTM+ZwAV0RZ8SKC+zmYKlnkUfD05sSZHKh/JsP09a
         7VS/TGInetomfBueq3ZdCu1+TU3rNgOnJGRT8UXKp2Y+anVVxOb0GN4o6gIEhUjaC5+W
         xh1dYRorb0BoOKDJMEHI84ZrgJNOzEEA72XCHg6g/E/BWWeHPp4DsNnJXHjpO7VqjfZ6
         5mXWViYVgcizI+GlMJfdByCATdbgDQdkkTMPWQOJyLbcTe3YoI0B50bzwn24AiDDtM29
         75UQ==
X-Forwarded-Encrypted: i=1; AFNElJ/QWisWT9uS0UAOacUrleIH37He7jXU4y0yyHjyDRUCs6AkzwA12dubvebCah6Ss2/Itirp77hYSaMdDZ21@lists.linaro.org
X-Gm-Message-State: AOJu0YyVBYt5/MWKa4f0Dm3hufZ6aQ5cZUbbBSnwo+pclCkZYO61BD29
	Sa7mZspzCrq40Wb7ewq/GrTvSYfIsje7wCfhbUx25ueHO3dA0NuX0UcB85Iqni+ZY3gf+Ar9nen
	9Wwl4Uy+3wQua7JdZl3lt4CLyWN0ZbPERp3UPc4UDvMCeduPp3Utdp7BcIGunLz1JldvJ2Q==
X-Gm-Gg: Acq92OGiKwDKmYQIP67L2Hv8CYw6foR/+9eXXkmHFd1ehTU7gldcouHW2aYSKwWTQbw
	hoq34PXa1NiCkt55ZNrcf5AOvhfGKNWFchKxHwS60kv1vNi+JhviwN2D7VlsodPNekr8xHzr3uE
	wxiv3k5it4899c0K/kno2BN76s6tkX+XX4I8o7zjhPnr4WIs5HQgkcIhcjNuqdSAKw1GtyOuk6o
	MUasQnWQk4vLis70Ptmvfk5h7MCWnY+d25xkM92JK39D/TtUsn8ERtX7kgeBcw2g3yKWPyLuzlA
	HZFm2QMPUSLmXhq3CwRB9soeyPd2gwNU00yiUZ00iu7IAlBeVVfiMv2kaHr10GtxrZaA6E2suTo
	Mth1FJ5kQ7u9XGixbGFtoKggPjMJwn622JnpTgOlBYT8/5rDYNO46a4jf2Yx1Cg==
X-Received: by 2002:a17:90b:5145:b0:36d:81b3:61a1 with SMTP id 98e67ed59e1d1-370eed0b63bmr26327701a91.7.1781084308258;
        Wed, 10 Jun 2026 02:38:28 -0700 (PDT)
X-Received: by 2002:a17:90b:5145:b0:36d:81b3:61a1 with SMTP id 98e67ed59e1d1-370eed0b63bmr26327640a91.7.1781084307708;
        Wed, 10 Jun 2026 02:38:27 -0700 (PDT)
Received: from [10.204.78.173] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37624a8e76csm2773910a91.15.2026.06.10.02.38.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2026 02:38:26 -0700 (PDT)
Message-ID: <b22703d3-03f2-4835-9eee-c3d1fa50a5ce@oss.qualcomm.com>
Date: Wed, 10 Jun 2026 15:08:17 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-12-b2d984c297f8@oss.qualcomm.com>
 <43a7laqb7mnrvleunnmbxwhvzr6w3au4ofjri4r4ap7clsx6mc@jxqlr4a2lw56>
 <ba003d7d-03f5-4572-8321-3d1f666c8c27@oss.qualcomm.com>
 <q2q6tfnas3kikapwehbp6q7mykvk2wbuvn6ypbzc5ta7azh65w@wdwphde7gcxc>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <q2q6tfnas3kikapwehbp6q7mykvk2wbuvn6ypbzc5ta7azh65w@wdwphde7gcxc>
X-Authority-Analysis: v=2.4 cv=TeamcxQh c=1 sm=1 tr=0 ts=6a293095 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=0tHIOXy_Vfvaqy0H-swA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: dARJxtZxaqrxopPkdZROhGGY9eKYPmJZ
X-Proofpoint-ORIG-GUID: dARJxtZxaqrxopPkdZROhGGY9eKYPmJZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDA5MSBTYWx0ZWRfX4JmqQk/MCGHJ
 BrthkI3BLfvQBckzsGdTG9lde/tiYEWSUeS34mdYdDRSfnIFr5pCKQNouxE92Lm1sBV4HKOArNJ
 vbcHT/cmpwpQBpmH8zenn+Bt8DfsgEdJyx1NJ3Xt+dw0hMYxaggDAz2ioBPYx/m3UDu8aV34W9s
 Aiw6YNCmh7GUUHR0hExhnzbmEFcMjiSOhjwMxZsdo6Sl4kCq8llTPWa9X5pAJbu56XPsPqOMP7L
 c5UFr+i5IqHkrNVEAGzmc2yWVxzGKrckn2Z9bAh4mDPBXol8lOjxc4VYmzCAaoouGGmOUd4mpHH
 TpAZhHNl4+/+peuqN14p1IFGgPKwMb79nzmx+cmKTfpVec4uv/pAkLGD3hyEfEcCutQnS0lIbTu
 Q15GaScH/XgIdkv9EwL00d4RpPunj9ghTYq+r+cLMOQMbDO+CCmqfrDY5xjSrX5e/uecbDfw0fu
 wp5Vzib7l2lnB/OtuSQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_02,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0
 impostorscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606100091
X-Spamd-Bar: ---
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: W3RQ2VH5DNZXM7F5AJIC7VE53CF3LNES
X-Message-ID-Hash: W3RQ2VH5DNZXM7F5AJIC7VE53CF3LNES
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:29:04 +0000
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/15] accel/qda: Add FastRPC invocation support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W3RQ2VH5DNZXM7F5AJIC7VE53CF3LNES/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,quicinc.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:ogabbay@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:quic_bkumar@quicinc.com,m:quic_chennak@quicinc.com,m:srini@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[qualcomm.com:-,oss.qualcomm.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,qualcomm.com:email,linaro.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5C2DA668D4A

On 08-06-2026 02:44, Dmitry Baryshkov wrote:
> On Thu, Jun 04, 2026 at 10:39:14AM +0530, Ekansh Gupta wrote:
>> On 20-05-2026 19:26, Dmitry Baryshkov wrote:
>>> On Tue, May 19, 2026 at 11:46:02AM +0530, Ekansh Gupta via B4 Relay wrote:
>>>> From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>>>>
>>>> Implement the FastRPC remote procedure call path, allowing user-space
>>>> to invoke methods on the DSP via DRM_IOCTL_QDA_REMOTE_INVOKE.
>>>>
>>>> qda_fastrpc.c / qda_fastrpc.h
>>>>   Implements the FastRPC protocol layer: argument marshalling
>>>>   (qda_fastrpc_invoke_pack), response unmarshalling
>>>>   (qda_fastrpc_invoke_unpack), and invocation context lifecycle
>>>>   management. Each invocation allocates a fastrpc_invoke_context
>>>>   which tracks buffer descriptors, GEM objects, and the completion
>>>>   used to synchronise with the DSP response.
>>>>
>>>>   Buffer arguments are handled in three ways:
>>>>   - DMA-BUF fd: imported via PRIME, IOMMU-mapped dma_addr used
>>>>   - Direct (inline): copied into the GEM-backed message buffer
>>>>   - DMA handle: fd forwarded to DSP, physical page descriptor computed
>>>
>>> No. This needs to go away. The QDA should support only one way to pass
>>> data - via the GEM buffers. Everything else should be handled by the
>>> shim layer, etc.
>> each FD passed here is a GEM buffer. The reason to pass fd is that there
>> are some APIs on DSP side which takes fd as an argument and the user
>> might use the same on their skel implementation. So in this case the
>> remote call will take fd to DSP and the skel implementation will use the
>> FD.>
> 
> Then handle it all on the userspace side. In the end, bad library API is
> not a reason to complicate kernel API and kernel driver.
The problem is that the user passes the fd as an argument to the remote
call which the fastrpc library cannot decrypt. So basically the user can
allocate some fd buffer(say with FD1) and then call some remote method
passing FD1 as an int argument to call HAP_mmap on the same at DSP side,
this int argument cannot be differentiated by fastrpc library as
FD/non-FD argument.
> 
>>>> +#define FASTRPC_SCALARS(method, in, out) \
>>>> +		FASTRPC_BUILD_SCALARS(0, method, in, out, 0, 0)
>>>> +
>>>> +/**
>>>> + * struct fastrpc_buf_overlap - Buffer overlap tracking structure
>>>> + *
>>>> + * Tracks overlapping buffer regions to optimise memory mapping and avoid
>>>> + * redundant mappings of the same physical memory.
>>>
>>> WHat for? Even if this is a valid optimization, implement it as a
>>> subsequent patch. The first goal should be very simple - get GEM buffers
>>> from the app, pass them to the DSP, read the results.
>> yes, this implementation is mimicking the existing fastrpc design where
>> non-FD buffers are also supported. I am currently evaluating the
>> maintainance of such buffers from userspace side and trying to
>> understand the impacts of the same. I am planning to bring it as a
>> future enhancement if there is no regression.>
> 
> Other way around. Drop it for now and bring it back if it has any
> positive impact.
We did evaluation and don't see userspace side handling being feasible
for non-FD buffers, I'll try to summarize the current design and the
problem:

Currently a remote call can take up to 255 arguments and in many cases
the user passes the buffers as non-FD arguments which is then copied to
meta data and sent to DSP. Before copy there is an operation to identify
if the buffers are overlapped so that it can be maintained efficiently.

DSP understands this based on offset and maps it accordingly, so for
multiple small sized arguments, there is a possibility that a single
page is used. Now if we allocate GEM buffers for each of these small
arguments, it would lead to creation of multiple pages(can go up to 255)
and all these pages then are required to be mapped onto DSP which could
also lead to DSP address space exhaustion. So the limitation is too many
pages and that DSP cannot handling this as efficiently as overlapped
copy buffers.>
>>>> + */
>>>> +struct fastrpc_buf_overlap {
>>>
>>> Stop clashing the names with the existing fastrpc driver.
>> ack.>
>>>> +	/** @start: Start address of the buffer in user virtual address space */
>>>> +	u64 start;
>>>> +	/** @end: End address of the buffer in user virtual address space */
>>>> +	u64 end;
>>>> +	/** @raix: Remote argument index associated with this overlap */
>>>> +	int raix;
>>>> +	/** @mstart: Start address of the mapped region */
>>>> +	u64 mstart;
>>>> +	/** @mend: End address of the mapped region */
>>>> +	u64 mend;
>>>> +	/** @offset: Offset within the mapped region */
>>>> +	u64 offset;
>>>> +};
>>>> +
>>>> +/**
>>>> + * struct fastrpc_remote_dmahandle - Remote DMA handle descriptor
>>>> + */
>>>> +struct fastrpc_remote_dmahandle {
>>>> +	/** @fd: DMA-BUF file descriptor */
>>>> +	s32 fd;
>>>> +	/** @offset: Byte offset within the DMA-BUF */
>>>> +	u32 offset;
>>>> +	/** @len: Length of the region in bytes */
>>>> +	u32 len;
>>>> +};
>>>> +
>>>> +/**
>>>> + * struct fastrpc_remote_buf - Remote buffer descriptor
>>>> + */
>>>> +struct fastrpc_remote_buf {
>>>> +	/** @pv: Buffer pointer (user virtual address) */
>>>> +	u64 pv;
>>>> +	/** @len: Length of the buffer in bytes */
>>>> +	u64 len;
>>>> +};
>>>> +
>>>> +/**
>>>> + * union fastrpc_remote_arg - Remote argument (buffer or DMA handle)
>>>> + */
>>>> +union fastrpc_remote_arg {
>>>> +	/** @buf: Inline buffer descriptor */
>>>> +	struct fastrpc_remote_buf buf;
>>>> +	/** @dma: DMA-BUF handle descriptor */
>>>> +	struct fastrpc_remote_dmahandle dma;
>>>> +};
>>>> +
>>>> +/**
>>>> + * struct fastrpc_phy_page - Physical page descriptor
>>>> + */
>>>> +struct fastrpc_phy_page {
>>>> +	/** @addr: Physical (IOMMU) address of the page */
>>>> +	u64 addr;
>>>> +	/** @size: Size of the contiguous region in bytes */
>>>> +	u64 size;
>>>> +};
>>>> +
>>>> +/**
>>>> + * struct fastrpc_invoke_buf - Invoke buffer descriptor
>>>> + */
>>>> +struct fastrpc_invoke_buf {
>>>> +	/** @num: Number of contiguous physical regions */
>>>> +	u32 num;
>>>> +	/** @pgidx: Index into the physical page array */
>>>> +	u32 pgidx;
>>>> +};
>>>> +
>>>> +/**
>>>> + * struct fastrpc_msg - FastRPC wire message for remote invocations
>>>> + *
>>>> + * Sent to the remote processor via RPMsg. This is the exact layout
>>>> + * the DSP expects; do not reorder or add fields without DSP firmware
>>>> + * coordination.
>>>> + */
>>>> +struct fastrpc_msg {
>>>> +	/** @remote_session_id: Session identifier on the remote processor */
>>>> +	int remote_session_id;
>>>> +	/** @tid: Thread ID of the invoking thread */
>>>> +	int tid;
>>>> +	/** @ctx: Context identifier for matching request/response */
>>>> +	u64 ctx;
>>>> +	/** @handle: Handle of the remote method to invoke */
>>>> +	u32 handle;
>>>> +	/** @sc: Scalars value encoding in/out buffer counts */
>>>> +	u32 sc;
>>>> +	/** @addr: Physical address of the message payload buffer */
>>>> +	u64 addr;
>>>> +	/** @size: Size of the message payload in bytes */
>>>> +	u64 size;
>>>> +};
>>>> +
>>>> +/**
>>>> + * struct qda_msg - FastRPC message with kernel-internal bookkeeping
>>>> + *
>>>> + * The wire-format portion is kept in the embedded @fastrpc member (must
>>>> + * be first) so that &qda_msg->fastrpc can be passed directly to
>>>> + * rpmsg_send() without a copy.
>>>> + */
>>>> +struct qda_msg {
>>>> +	/**
>>>> +	 * @fastrpc: Wire-format message sent to the DSP via RPMsg.
>>>> +	 * Must be the first member.
>>>> +	 */
>>>> +	struct fastrpc_msg fastrpc;
>>>> +	/** @buf: Kernel virtual address of the payload buffer */
>>>> +	void *buf;
>>>> +	/** @phys: Physical/DMA address of the payload buffer */
>>>> +	u64 phys;
>>>> +	/** @ret: Return value from the remote processor */
>>>> +	int ret;
>>>> +	/** @fastrpc_ctx: Back-pointer to the owning invocation context */
>>>> +	struct fastrpc_invoke_context *fastrpc_ctx;
>>>> +	/** @file_priv: DRM file private data for GEM object lookup */
>>>> +	struct drm_file *file_priv;
>>>> +};
>>>> +
>>>> +/**
>>>> + * struct fastrpc_invoke_context - Remote procedure call invocation context
>>>> + *
>>>> + * Maintains all state for a single remote procedure call, including buffer
>>>> + * management, synchronisation, and result handling.
>>>> + */
>>>> +struct fastrpc_invoke_context {
>>>> +	/** @node: List node for linking contexts in a queue */
>>>> +	struct list_head node;
>>>> +	/** @ctxid: Unique context identifier (XArray key shifted left by 4) */
>>>> +	u64 ctxid;
>>>> +	/** @inbufs: Number of input buffers */
>>>> +	int inbufs;
>>>> +	/** @outbufs: Number of output buffers */
>>>> +	int outbufs;
>>>> +	/** @handles: Number of DMA-BUF handle arguments */
>>>> +	int handles;
>>>> +	/** @nscalars: Total number of scalar arguments */
>>>> +	int nscalars;
>>>> +	/** @nbufs: Total number of buffer arguments (inbufs + outbufs) */
>>>> +	int nbufs;
>>>
>>> If it is inbufs + outbufs, why do you need it here?
>>>
>>>> +	/** @pid: Process ID of the calling process */
>>>> +	int pid;
>>>> +	/** @retval: Return value from the remote invocation */
>>>> +	int retval;
>>>> +	/** @metalen: Length of the FastRPC metadata header in bytes */
>>>> +	int metalen;
>>>
>>> size_t, also why do you need it?
>>>
>>>> +	/** @remote_session_id: Session identifier on the remote processor */
>>>> +	int remote_session_id;
>>>> +	/** @pd: Protection domain identifier encoded into the context ID */
>>>> +	int pd;
>>>> +	/** @type: Invocation type (e.g. FASTRPC_RMID_INVOKE_DYNAMIC) */
>>>> +	int type;
>>>> +	/** @sc: Scalars value encoding in/out buffer counts */
>>>> +	u32 sc;
>>>
>>> How is this different from the counts above?
>> sc carries the method id and handle counts. The reason to maintain count
>> separately is to avoid calculating it again and again.>
> 
> Is it just a sum of several values or something more complicated?
just the sum, I'll drop it if it's not really useful.>
>>>> +	/** @handle: Handle of the remote method being invoked */
>>>> +	u32 handle;
>>>> +	/** @crc: Pointer to CRC values for data integrity checking */
>>>> +	u32 *crc;
>>>
>>> Add it later. It's unused. Drop all unused fields.
>> ack.>
>>>> +	/** @fdlist: Pointer to array of DMA-BUF file descriptors */
>>>> +	u64 *fdlist;
>>>
>>> Why do you need DMA-BUFs in the invocation context? They all should be
>>> GEM buffers.
>> the reason is that the users are dependent on FDs as they can import
>> buffers allocated from anywhere and there are DSP APIs which takes fd as
>> an argument, so they might end up using the same in there skel
>> implementation.>
> 
> No, DSP API can't take FD, they don't quite cross the OS and IOMMU
> boundary. It's the userspace library API. Which might be improved,
> rewritten, implemented underneath, etc. For the kernel side please,
> pass _only_ GEM handles + offsets.
Yes, but with the current DSP design, DSP APIs take FD just because of
client/user design. On fastrpc, users could bring FD from any source,
register it with fastrpc and pass it on to DSP. The major problem is
what I mentioned above, where the user application passes the FD as an
integer argument and the fastrpc library not able to identify if that
int is an fd or some other data.>
>>>> +	/** @pkt_size: Total payload size in bytes */
>>>> +	u64 pkt_size;
>>>> +	/** @aligned_pkt_size: Page-aligned payload size for GEM allocation */
>>>> +	u64 aligned_pkt_size;
>>>> +	/** @list: Array of invoke buffer descriptors */
>>>> +	struct fastrpc_invoke_buf *list;
>>>> +	/** @pages: Array of physical page descriptors for all arguments */
>>>> +	struct fastrpc_phy_page *pages;
>>>> +	/** @input_pages: Array of physical page descriptors for input buffers */
>>>> +	struct fastrpc_phy_page *input_pages;
>>>
>>> I think you are trying to bring all the complexity from the old driver
>>> with no added benefit. Please don't. Use the existing memory manager.
>>> Let it handle all the gory details. If someting is not there, we should
>>> consider extending GEM instead.
>> I'm not changing the metadata format as the DSP might not understand the
>> messages if we modify it.
> 
> Well, it's up to you to know if DSP will understand the message or not.
> The probability ("might not") is not suitable here. Anyway, let's get
> rid of the various data formats first, then maybe some of the items will
> go away on their own.
ack>
>> Also, the fd is still being used because of
>> the client dependency on it. I'll check if there is any other logic that
>> needs alteration here.>
> 
> If the client keeps on passing FD to the library calls, you can map
> FD to GEM handles in the library code.
I hope the int argument part mentioned above answers this.>
>>>> +
>>>> +static int fastrpc_context_get_id(struct fastrpc_invoke_context *ctx, struct qda_dev *qdev)
>>>> +{
>>>> +	int ret;
>>>> +	u32 id;
>>>> +
>>>> +	if (!qdev)
>>>> +		return -EINVAL;
>>>> +
>>>> +	ret = xa_alloc(&qdev->ctx_xa, &id, ctx, xa_limit_32b, GFP_KERNEL);
>>>> +	if (ret)
>>>> +		return ret;
>>>> +
>>>> +	ctx->ctxid = id << 4;
>>>
>>> Why is it being shifted?
>> this is to accomodate PD type>
> 
> Not really an answer.
Okay, let me bring the ctxid layout that DSP expects:

[11:4] = CCCCCCCC (context ID)
[3:0]  = PPPP (PD type)

Based on this PD type, DSP will decide where to queue the message.
> 
>>>> +	return 0;
>>>> +}
>>>> +
>>>
>>
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

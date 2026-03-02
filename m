Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFkcONIZ4Wn3pAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:18:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A47CF412840
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:18:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B7E33447FA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:18:09 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id D82163ED23
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 09:12:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=fzf41Olr;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=SzJsu4NG;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622825rl2432441
	for <linaro-mm-sig@lists.linaro.org>; Mon, 2 Mar 2026 09:12:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RUKup/XfO3qrGbQJzWHbBXV03Pa7ritqjhXq2ej50ho=; b=fzf41OlrSKkpQ6wi
	cPQXO5M+H1/gKBOaYXUE9BMMfcSeGx6uEDuGZwsV6Lq/my7EBWG7XVuLcNdZVZOB
	tSNDpjP9FtPPM6iRJHZNHDS+OOflGy+z5cH3tFGhNqlwtxYdGJW5wbNWdZTgWQOk
	V1kdZnXxUtPv83ZpKQnB8FeCY9+wu6Mxz4I2dyAN6IX6diuuKNaFkAlazxJdsoaw
	gYzC3Kk1n4VHbhHDUmxRT4knmV/BOZd0Lbb80uMjPOqswfxyFGS+h51ftHuBN74E
	QHtVo1SnCm+zRdOYV2YUkcg2ExftgfTOXynvwoGd2evfkuzDo09ACqGAovNTqVLA
	fk8GnA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgrvyg9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 09:12:56 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ae49080364so9664885ad.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 01:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772442776; x=1773047576; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RUKup/XfO3qrGbQJzWHbBXV03Pa7ritqjhXq2ej50ho=;
        b=SzJsu4NG8n9H6QHZ4pb3m0Gx1nhD9L8YiV89yjtk5lqFH2v4R3fNeCSKTDYsko1Fi7
         GY5I8e21rAkRr/7C2mJ426OYaMAslI9wTQk9Fxwa4UnLa+c04oyGzf+ASUZTezqOItWP
         0hEShcquohfxL2kxmqblA3ACrdzkUVPnpJhjy/WoDXiK8unhMRapNQoXxkEQyzbBSipp
         MWajozlcHFlzQYiba58WNoX76VsbBo/rfzRwoLcprD8uwBq1pib/867ZIY7Gpnb1vUnZ
         JD8uwRRzB9owZfaVjtJvnJz8ypz71HxbHQSL934LVBXP2dD26FEoN4xSGP+fnPO1MyA7
         8v6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772442776; x=1773047576;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RUKup/XfO3qrGbQJzWHbBXV03Pa7ritqjhXq2ej50ho=;
        b=eCw3S7QaJpG32DmoknOajonKHIlgu0M4m6cEQcfePudMRHWWjRKS1YUfxytXQpc9WZ
         aHh74UtWTlfvl5sr//la0xhp3BuL7nLPzulenlyzgIKqfwwo5oV5e51xA0C6AFl/jojs
         RLXB0SyzfMLeAyBNIB6fu7kGt4OH9KTaAIkjTPX6+O5uieVT550OFzCuO7vtD/Wtn8ll
         V7lvD0HObySjp7wjpARaWM2GIngbE8XK5xAGE2l2yarspBguUzcMj/ZKbixtEMHUy0Ny
         LNmr/bEBQ6bAvjJDmc6QRyincdK0Tmb4e2Nc8NXbJrHrzzads6Mab7yPuyMMTpcztBFj
         EMRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVm/LuVdxzY90mNl3j64eU69uunb4NqE7UG07ZfngiteVE9JX+JlwoG8govwlNt53mlp19Son+cwuzntpa3@lists.linaro.org
X-Gm-Message-State: AOJu0YyFW821K+WqjjhLRfEypOk9MjHjjIkVVDiHyuUtJn9A07XpsCJH
	aUOk/lbuSLfJJWfuQF2RPv3EIQy+id3s41PrOOyhQ1zfCVtAN/9eqJ84RASTjeg5tpmTh3VYTX/
	Y6xnJV8vzlYBZ45h9WoD41Y/RMwwhUTlgXjJlVCi1mF/aWx+Ivi3T2HROaC8A9CqupsLVyg==
X-Gm-Gg: ATEYQzx2I4y/hW8Z7RLJaQOY+JKR9Tnf42aApPm/iZZtqGmr7mzRwZKJzhALphzVN87
	dzZiK5zebfu1YRYjxGV7p6RgZ/fjXSndzXoMeOe/ZoOEnTet4hP4rCv2w/4dn88xojQ3e8QrjjG
	kz/kbnbsKXpwj3BpjWnN3IrQvjOQgtMPjAXU8mPTAlSC+gpPqg+KiNNa3Cknm8P5XqO0bw3bZAd
	PKAvElfe2HEDdZeQuQuHM4+ctYUfxJhLNamJ/XzDYJPyor01ZPH47IWJPhA6KGEDyOGVaSPjY/L
	Wnkq7nnm7x5eJmAwCPMlDInWoE2INU2XGClCVdQCf45Lc9vtdJFdH+J8F+tkPNH3ps3MJV7vxiu
	lyEE+H7pK3t9vF+YnL7f1TZJeov9+idr9G0l/5l/eTo+FdANTpQ==
X-Received: by 2002:a17:902:d58b:b0:2ae:5655:b16 with SMTP id d9443c01a7336-2ae56551006mr12820355ad.21.1772442776041;
        Mon, 02 Mar 2026 01:12:56 -0800 (PST)
X-Received: by 2002:a17:902:d58b:b0:2ae:5655:b16 with SMTP id d9443c01a7336-2ae56551006mr12820065ad.21.1772442775550;
        Mon, 02 Mar 2026 01:12:55 -0800 (PST)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5b0691sm178825005ad.11.2026.03.02.01.12.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 01:12:54 -0800 (PST)
Message-ID: <4abcb402-8d57-4bd3-ab8f-3a96c11b3410@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 14:42:47 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Krzysztof Kozlowski <krzk@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-16-fe46a9c1a046@oss.qualcomm.com>
 <fd7a2ac7-796a-4cdb-a55f-91e42f08109c@kernel.org>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <fd7a2ac7-796a-4cdb-a55f-91e42f08109c@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3OCBTYWx0ZWRfX+7a+lvH2x0uE
 tB44x8dSZzmfOm8MFstYYostFuljcO5pko6urMlz9KYcIv5S9mEP9jlo5NjklmAuoOLghF5xpxu
 f+scIMWLttX+l5lgPPgKLBuQ+LPatZFH5R3gupr66Nw1QngGFaWbCWr2HzB7rLhri8idKKqLgMg
 c9t3N6/eRidoRnSj9XjcVR6tzLxDyuNmhEdKFbdIdPbMmiG+U90NVLJ+7rBNgUINAwySw75kdhU
 6SnITTg9A1HtfW4sDTdsLW0qTZabHleBRxNGf1aRvg3ZullTfz2JaMJg7T5whx5Dt7vWncUJLr8
 1Bbg5xVOHu7gwhoUm+u1VLMQSmPKtKkS00XYTrPRfn+v3d9p7BNjtdZOE9SFp9vZu1yNZUodI0S
 NqZeYduqW6gVU/V+k2uOHu/+xLzrWsL5tP80DfsxftIPa17miC+oD1a4osbwKjQWEeZofo+bhDp
 CelzpvOVymi+Laov1uA==
X-Proofpoint-GUID: vRx_tpC6NejDoID-4c33oNIZ2mg6BUxb
X-Proofpoint-ORIG-GUID: vRx_tpC6NejDoID-4c33oNIZ2mg6BUxb
X-Authority-Analysis: v=2.4 cv=Zqzg6t7G c=1 sm=1 tr=0 ts=69a55498 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=A3mkvOHymaTnmgbQ1zAA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020078
X-Spamd-Bar: -----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L37Y54VWIP4IQUEE5IP4F3DRAMDLWHIC
X-Message-ID-Hash: L37Y54VWIP4IQUEE5IP4F3DRAMDLWHIC
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:22 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 16/18] accel/qda: Add FastRPC-based DSP memory mapping support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L37Y54VWIP4IQUEE5IP4F3DRAMDLWHIC/>
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
	DATE_IN_PAST(1.00)[1088];
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
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: A47CF412840
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/26/2026 4:18 PM, Krzysztof Kozlowski wrote:
> On 23/02/2026 20:09, Ekansh Gupta wrote:
>> Add a DRM_QDA_MAP ioctl and supporting FastRPC plumbing to map GEM
>> backed buffers into the DSP virtual address space. The new
>> qda_mem_map UAPI structure allows userspace to request legacy MMAP
>> style mappings or handle-based MEM_MAP mappings with attributes, and
>> encodes flags, offsets and optional virtual address hints that are
>> forwarded to the DSP.
>>
>> On the FastRPC side new method identifiers FASTRPC_RMID_INIT_MMAP
>> and FASTRPC_RMID_INIT_MEM_MAP are introduced together with message
>> structures for map requests and responses. The fastrpc_prepare_args
>> path is extended to build the appropriate request headers, serialize
>> the physical page information derived from a GEM object into a
>> fastrpc_phy_page array and pack the arguments into the shared message
>> buffer used by the existing invoke infrastructure.
>>
>> The qda_ioctl_mmap() handler dispatches mapping requests based on the
>> qda_mem_map request type, reusing the generic fastrpc_invoke()
>> machinery and the RPMsg transport to communicate with the DSP. This
>> provides the foundation for explicit buffer mapping into the DSP
>> address space for subsequent FastRPC calls, aligned with the
>> traditional FastRPC user space model.
>>
>> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
>> ---
>>  arch/arm64/configs/defconfig    |   2 +
> Not relevan there. Don't stuff other subsystem code into your patches.
> Especially without any reasons (your commit msg must explain WHY you are
> doing things).
Please ignore this, it's a mistake pulled from my local test branch. I'm not going to add any
defconfig changes as part of this patch series.

Thanks for pointing this out.
>
>>  drivers/accel/qda/qda_drv.c     |   1 +
>>  drivers/accel/qda/qda_fastrpc.c | 217 ++++++++++++++++++++++++++++++++++++++++
>>  drivers/accel/qda/qda_fastrpc.h |  64 ++++++++++++
>>  drivers/accel/qda/qda_ioctl.c   |  24 +++++
>>  drivers/accel/qda/qda_ioctl.h   |  13 +++
>>  include/uapi/drm/qda_accel.h    |  44 +++++++-
>>  7 files changed, 364 insertions(+), 1 deletion(-)
>>
>
>
> Best regards,
> Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNucBq4Z4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:17:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9951F4127FE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:17:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B341B43F19
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:17:32 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id D5A353F9BF
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 08:43:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="E6FZQn/V";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=g4LXha0Z;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6227RNdP2469712
	for <linaro-mm-sig@lists.linaro.org>; Mon, 2 Mar 2026 08:43:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kzhcGz9kiSv/N4brhbDMgmBjGdF9z8YyVnAXdkdzS5I=; b=E6FZQn/V+eAhBHn0
	8tH6CLUWeLzRwHKNoHRBXFhESTg8oppg4/shnlBIJSpK+UUNYJAXzfZDV/Xew3cn
	gxxUjFZDbR2tQM7WKMRb0DQ5YsZ3IetF4VzbhlOYem8u3zzwysF/7B3IB19HrAPK
	ws+FiOiFDsF3Q4K/mpYNHAUf9JkNiPHXP10RACAUFmWye2LgYHeVX3Mh9FGZbirm
	TplyKHUGAQNGq1kLz6AXSsZlDeaY4QjdkdTLnyTxJmMydlc93l7LSXqvo22pHurH
	V54k0ahuW39O9Ba6kfFlEUEaoRsTlOo7SQD+XQZAKeOlFk6xUqJo0+N5OEtXWA0p
	1mENwQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cmgbatjb6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 08:43:36 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae415b68b1so17956545ad.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 00:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772441015; x=1773045815; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kzhcGz9kiSv/N4brhbDMgmBjGdF9z8YyVnAXdkdzS5I=;
        b=g4LXha0ZJbLJ3QjnZlAnsJ9eEz7uFxWjQbkk+iFI6yAJB0sz5H8PrYn1fKSHW9ngwN
         InVxMyPZIVzGfseSEGrTLqw8MF7Pqdwbln7dTUI2Wv7tIal/V9/rcOQFn+MpQYRwLgoh
         qAyy1xGRSypRGsapWm/V8ACvMu4DfI7fuoIJi91u7EZI3yixpnBt5FJbuF2RkgkZL8/p
         EZ7YCsVapEyApPtj4HGlSVG40TvwrYM3252nSu8CWsZHfsvylWWzLj9qQVxj5j9FFahg
         w6tK7zS62F9RikaJvXCN9F7eLQUWSFNSNP6Qloxts4iYahWgm15iO3WkrLH/aJ/314wM
         h6AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772441015; x=1773045815;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kzhcGz9kiSv/N4brhbDMgmBjGdF9z8YyVnAXdkdzS5I=;
        b=o5d4FHLVd+4VgYiEafX0PpyhlK8+KsNc7XT2huAOOwSr29Y45JkyWdWPvhjJzww1mT
         hbbzBMauqHt/U6AV6rkhWIAaE6NU3x8ogMUKTHhh8NbGoiBW0avHoCwV2MQo4zxAgiU+
         nvpk89BRJNZBGyBpzZx2Kd2GyTtU0RhnzQ8gJ65LSP5Ysz4/aZHQiKfCp5eFK/H7ItpN
         2ZdV2ltktq8gUdB7tkY1ugZ+jRTDmRJ/oRJoxz2QPETKV8Vag3xL0eKUXErqYfOO5+AH
         29JPndsbq2RTqoMNDMHTm/qC/ehDqTtJ5IQhlx1Fib8rayN2ack2N4v+yiIPpop9NsHW
         fhJA==
X-Forwarded-Encrypted: i=1; AJvYcCUGFXuau2DrFvmOOuaF/gXiLm+6bv96+cTb57wpp/4DbRai3CL7qpZcACM8kVZ6Qc6mCH2Z6lAXfIlTNWiv@lists.linaro.org
X-Gm-Message-State: AOJu0Yx4PmrqFYjIcLauc8v6r9bqdqDInQsEqbT+o7+0h2KPEK8g5c41
	slEG9pD//eFxQLsJgTft5Y67JLm0WqnlAV8HCcHCg8ptbPmkd+D/FSkVs7Njzp6TcE+GKKU1a8O
	Yo5myZpwM8C3QMZT9sslECutS5J31G469BaENOIlWfInzoDbyxqPsWIyxbn++4zYsoAPGXg==
X-Gm-Gg: ATEYQzzSmzOSXHlU5LFpa+HlgMtXIcUpDtQY98THxN4K9AxfJO184rI9RfNu23XSpm9
	qTTsfH8NPP/IXBN+X1u9ld8Hhi8IgHsQSOLSHqq+BcOtEuaZajEtGiTlg4b//gh37mWaIRAngcy
	e5XOUb2htMOLSFAFALOT08zXEQyWQjk/N/lfVR9HsxWWXfXhdDNNfFr3z6zzBE8/zCk0aShuHcA
	RyCn7uPH9Pil3dWPg/QPGox8MBeMlXEtlUvDKowZn4ZwxSaNSu6+1MBll468a6J9yk8tnIS0tWO
	k8xhRdJ5R27jAg+E6Yh/elwQl77nZErDpVVog3cGQOIL2hpzqkb0Sd+Sgj30qljIBP4lloGJJPp
	EiAuOWgGUarShyB/R28LyJ4OZGRdHSY3rticv0CibDUMtAjJ1GA==
X-Received: by 2002:a17:903:2352:b0:2ae:4a4e:1e25 with SMTP id d9443c01a7336-2ae4a4e1f37mr39247975ad.25.1772441015352;
        Mon, 02 Mar 2026 00:43:35 -0800 (PST)
X-Received: by 2002:a17:903:2352:b0:2ae:4a4e:1e25 with SMTP id d9443c01a7336-2ae4a4e1f37mr39247665ad.25.1772441014848;
        Mon, 02 Mar 2026 00:43:34 -0800 (PST)
Received: from [10.206.99.28] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae5276097asm23725485ad.34.2026.03.02.00.43.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 00:43:34 -0800 (PST)
Message-ID: <9eb6d9a3-268b-4dee-9fab-ec59322e8a3b@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 14:13:26 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Trilok Soni <trilokkumar.soni@oss.qualcomm.com>,
        Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <cac08f2f-73b0-4629-898a-1e24840910fd@oss.qualcomm.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <cac08f2f-73b0-4629-898a-1e24840910fd@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3NiBTYWx0ZWRfX690i8MktBZ41
 c+xyU9T4GcWQ4AeBdKawCOQSUGR7cco9nD1LkRx9OY9lnLCxAmUBBU03TYtiDvbf0XOI/IFXPDE
 ieRdRof19xVchn9qMVYOYG98LFRetGyNLhizeFPeU5mpUf/Kg6XPHQB0xXsuH24JN5dayX3F8NH
 FxYgG9GgVM4xSkQTKlbpggT+sQhYxXY/G41BtWigx7x63+xJ9tdfRwy4hyXILyuv8xDYGw8Yjn9
 ZUYvOuAf88lEnXoQ4n5s9u6uHYz8IxEYOJQhtgh+D/Nj4bPTpfSIpxbh3q3diJum5FjipPIxxQt
 KW+O7/4x0A6nMqgOnRPKsYlq52iuXIc/zCT0Dh/lE5B/CnyAA2exbHeidnscR5B9809HNMO3jKE
 jp0niYUKmOhlBmSPpMp1N/VIunA0TF80c1vKer2+O2/HP3Sud9U5xUjVLjW7CqHvnIF014JLsPS
 iWKvajHhILzSZtmmkHA==
X-Authority-Analysis: v=2.4 cv=QfVrf8bv c=1 sm=1 tr=0 ts=69a54db8 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=AnEmtbbmQWdTvrL9bUcA:9 a=QEXdDO2ut3YA:10 a=0lgtpPvCYYIA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 0DKCiX_4WYRrdGYg6l8iiaHyhNRA4aJY
X-Proofpoint-GUID: 0DKCiX_4WYRrdGYg6l8iiaHyhNRA4aJY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020076
X-Spamd-Bar: -----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RDNMAA3MRQE22INZOWVW3HVKYDRDGCXD
X-Message-ID-Hash: RDNMAA3MRQE22INZOWVW3HVKYDRDGCXD
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:19 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/18] accel/qda: Introduce Qualcomm DSP Accelerator driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RDNMAA3MRQE22INZOWVW3HVKYDRDGCXD/>
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
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,oss.qualcomm.com:mid]
X-Rspamd-Queue-Id: 9951F4127FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/24/2026 9:09 AM, Trilok Soni wrote:
> On 2/23/2026 11:08 AM, Ekansh Gupta wrote:
>> * Userspace Interface: While the driver provides a new DRM-based UAPI,
>>   the underlying FastRPC protocol and DSP firmware interface remain
>>   compatible. This ensures that DSP firmware and libraries continue to
>>   work without modification.
>
> This is not very clear and it is not explained properly in the 1st patch
> where you document this driver. It doesn't talk about how older
> UAPI based application will still work without any change
> or recompilation. I prefer the same old binary to work w/ the new
> DRM based interface without any changes (I don't know how that will be possible)
> OR if recompilation + linking is needed then you need to provide the wrapper library.
I'll add more details for this based on the discussion for compat driver.
>
> ---Trilok Soni

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

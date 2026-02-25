Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMfqB3YU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:55:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B387C4121F8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:55:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD82D4509E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:55:16 +0000 (UTC)
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	by lists.linaro.org (Postfix) with ESMTPS id A3F80404A9
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 13:42:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=Qn9YIFcs;
	spf=pass (lists.linaro.org: domain of bryan.odonoghue@linaro.org designates 209.85.208.67 as permitted sender) smtp.mailfrom=bryan.odonoghue@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-65b94e0a875so9762806a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 05:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772026942; x=1772631742; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZJfmcZ4qFbylZDu+uvn8Ui6nkXp001OEAlMyyRd9wXQ=;
        b=Qn9YIFcsx693IH6/fGNyPoWsDSNJdMK7IwvaL0P9JRj1zKn+0nRpQv8O0CwF64Ojgm
         +97GWVlL40SoQliQpYsC2RgUYVhJtYD6IhWPpG4+DlKPcG1M+ib+kSEHFeJ+sc4oa99e
         tblZgMlP1K/t+FufCtGjtDUqJTB5ZzLIdlC48LiqSEnPY7/mur9+95P4Y8op0mWAVvbb
         uYCtEU5Pl0N3Um6nLkdDnpAUHiwaeRChJDvcjvzoofZx5trVEbDuJ4HiS+ZQjR8OHwNo
         SSdDB/S6HZgNRNVW7gqOz0S36pktHYdk93prUIu17vqk8EdQhTe+VzMT8TqxpZifI2/y
         yymQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772026942; x=1772631742;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZJfmcZ4qFbylZDu+uvn8Ui6nkXp001OEAlMyyRd9wXQ=;
        b=ld2rtbEwWjYSneGlZEvpB+xtVUfu7Bks+YWYbabxWyxxJf/X/VqNPMihH09+fw3bCG
         M8Qgz4RTlJLCtcQU6wvE7WOs50g0QMJ2B4J8olDEblnp8euS5KtTqnNG6pdFNddeaEIg
         oT0+oQqSP7/0cJo0OxDbzpgqBwwYvwy6LJtP0rOoFa4v0LyAykJOdINZosRs0EEqXl6D
         XGgVApEQKJuVNBvYeW/b06SA5Q958DVVDMi0nePPNQBwETCtTuiwS83lO0b0gtLiIHf4
         Gv9SVw8CjsugldZ19V6dlxdJZT2mHM4hdEpFWc2jccM+/HpeaDMkEK1TAv1orhr1YFrf
         cfSA==
X-Forwarded-Encrypted: i=1; AJvYcCU47rvhntoPkYb5ev+kLrv3ekaJOX522Y5pWJb6xFnAccGVz/R/DzP9BQak29FMSvbrlcAqFYCzFfGyApq1@lists.linaro.org
X-Gm-Message-State: AOJu0YxxrCN3DYB/7SWrXj/tFJuHHC6V0HjY7Yh4YHBgHIcKmfQQDUVI
	GZmV0HyBjTlkETv4v6QHVpMc4eshGTpRfR9nR9hBqtwlin4ueN6xk8Hree3veoJLKQ5J5g==
X-Gm-Gg: ATEYQzz2HxJkDcOuvOq1AJX3+4CunuIGkZtd1rz5ZXW6ZGPk3EGQwF5AGAd61fy403N
	KCw5cx8LIaNzgp1pPTBtiTEBPB3rIUpd647oAHMu2Fnolw9697+dRRP89G1EFGRnDsuk9rDmcYe
	V8axcPgNHSR28OfwLJlcvyVktj81cnzLfSoThWrvBNVSjOx9JS73Jx9Ijisslt/xNTW8f0X0INr
	t438mYjcRxdc5DrkpEFwdW+fpDLM/SCxP+nuOK2XsWPME2Ukilbq1z27IK/vL2wTFsf3nTf4jWB
	nfM333Yb5J71jfS99gAwsoaPWfiJDsHExJLHmt3ma6+Ylcw0SNVmZOYrNY+kuFhEz9NoVcsSAI/
	bq7Nl1NCpAny5334204yTvmT6vfiD/DFz/rrWEf92kwfzlKXx+GfDWaVBmU3bhArkyXyi1nQEoC
	qGgzaAGUIZvNIO99l21lza9gvV0btk2ktHjnKHawMm89fFbVhXEzSIxa/Kkr3T/xqg
X-Received: by 2002:a05:6402:51cc:b0:658:b76f:da7c with SMTP id 4fb4d7f45d1cf-65ea4ed5a89mr10428013a12.13.1772026942535;
        Wed, 25 Feb 2026 05:42:22 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65eaba13806sm4384331a12.19.2026.02.25.05.42.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 05:42:22 -0800 (PST)
Message-ID: <172a9083-8cd6-428f-bd3d-d831e610b37b@linaro.org>
Date: Wed, 25 Feb 2026 13:42:19 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>,
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <vU2QyEVqOu-D3eGp7BZFICUeauxL32bwWzeidOAijoeVaJTk8KcRVsaQQD4MdFQEcaQTZ5RkzRsz9-Lhl1qsqg==@protonmail.internalid>
 <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
X-Spamd-Bar: --
X-MailFrom: bryan.odonoghue@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: S53LFKJLQA4JDJPNG6PM5DWO5J3UZIXB
X-Message-ID-Hash: S53LFKJLQA4JDJPNG6PM5DWO5J3UZIXB
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:41:04 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/18] accel/qda: Introduce Qualcomm DSP Accelerator driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S53LFKJLQA4JDJPNG6PM5DWO5J3UZIXB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.01 / 15.00];
	DATE_IN_PAST(1.00)[1203];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.980];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,tomeuvizoso.net:url]
X-Rspamd-Queue-Id: B387C4121F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 23/02/2026 19:08, Ekansh Gupta wrote:
> User-space staging branch
> ============
> https://github.com/qualcomm/fastrpc/tree/accel/staging

What would be really nice to see would be mesa integration allowing 
convergence of the xDSP/xPU accelerator space around something like a 
standard.

See: 
https://blog.tomeuvizoso.net/2025/07/rockchip-npu-update-6-we-are-in-mainline.html

---
bod
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

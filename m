Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AB26DB2EBE2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Aug 2025 05:23:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5740D45786
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Aug 2025 03:23:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id BDAEE43C7F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Aug 2025 03:22:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=yoGmijxh;
	spf=none (lists.linaro.org: domain of rdunlap@infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=rdunlap@infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=VMXZvWdTxmpFtlVQ9jlbQoJIR5oaIbYtP1S8SHubNqQ=; b=yoGmijxhHu+wEGIhK6HrD097at
	6cMBFlz8C8WVswT3oLGSdlC5KkEc0GJEgqJwbV8yzsQpRCMqZWEH7cYmoXwKbA9+97QaXBfzNzVVA
	rPsxXlHDomjMQsPBHw57yLen1Wa6o9YiIhAGdncGVYxeRxwyKMeyaYqd6WJ23oX0YvMLIDlWDw6FH
	/c1Hx7P/HcqKDcDf068VRYtA+YALxUoTHnHjXbOkO+vJ3SrLCBi4CqU8nRMMKu5JCDwJxkgxnc3A3
	OhVJJo3UNzlzAs8juRI10/qO5MWvTRtl8REiq3Pt9PVi9WzraKdDI4GqpO3hfo8qqdOV9Qtl6U1qQ
	Qwr6krsQ==;
Received: from [50.53.25.54] (helo=[192.168.254.17])
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uovt7-0000000FcTp-3v7h;
	Thu, 21 Aug 2025 03:22:53 +0000
Message-ID: <74ba8f4e-1ccd-4962-bb5e-48a9157da952@infradead.org>
Date: Wed, 20 Aug 2025 20:22:52 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Sumit Garg <sumit.garg@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Apurupa Pattapu <quic_apurupa@quicinc.com>, Kees Cook <kees@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20250820-qcom-tee-using-tee-ss-without-mem-obj-v8-0-7066680f138a@oss.qualcomm.com>
 <20250820-qcom-tee-using-tee-ss-without-mem-obj-v8-4-7066680f138a@oss.qualcomm.com>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20250820-qcom-tee-using-tee-ss-without-mem-obj-v8-4-7066680f138a@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BDAEE43C7F
X-Spamd-Bar: --
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-2.90)[99.56%];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_ALL(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
Message-ID-Hash: ANSIADYPAMUGOXCO5GAMZBVNXTOC6NAI
X-Message-ID-Hash: ANSIADYPAMUGOXCO5GAMZBVNXTOC6NAI
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Harshal Dev <quic_hdev@quicinc.com>, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Sumit Garg <sumit.garg@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 04/11] tee: add TEE_IOCTL_PARAM_ATTR_TYPE_OBJREF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ANSIADYPAMUGOXCO5GAMZBVNXTOC6NAI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



On 8/20/25 4:38 PM, Amirreza Zarrabi wrote:
> +/**
> + * struct tee_ioctl_invoke_func_arg - Invokes an object in a Trusted Application
> + * @id:		[in] Object id
> + * @op:		[in] Object operation, specific to the object
> + * @ret:	[out] return value
> + * @num_params	[in] number of parameters following this struct

Missing colon (':') above:
    * @num_params:

> + */
> +struct tee_ioctl_object_invoke_arg {
> +	__u64 id;
> +	__u32 op;
> +	__u32 ret;
> +	__u32 num_params;
> +	/* num_params tells the actual number of element in params */
> +	struct tee_ioctl_param params[];
> +};

-- 
~Randy

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

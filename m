Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E49270E2B6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 May 2023 19:22:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1853D44E56
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 May 2023 17:22:06 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	by lists.linaro.org (Postfix) with ESMTPS id B57FB3F681
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 17:22:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=e5PYsZyC;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.210.171 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-64d24136685so78774b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 10:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684862521; x=1687454521;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fHVrD6f1ZBUvDig9B8fW+B2T1eaWt6K+xteWleiUqpM=;
        b=e5PYsZyCe4Epu1Ke/nz+Z7QcMheP3mHbB5OT+nXSLQHtYOVqA0B5S+RVBcCdExHr7O
         PLvUYCGSC+fAdno27iE+11Hiv6vMk2puQ2aeXx+WjolHH54i76xJTjTYLZ1BPZqKTgI0
         IQsOUruJVQH6ptfrpSjbYLmsOSRLfml/Lzv0M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684862521; x=1687454521;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fHVrD6f1ZBUvDig9B8fW+B2T1eaWt6K+xteWleiUqpM=;
        b=HmljiHH7oPXqKnPqlsJ5LevExTUKdN0kOhEWo+c0EJCHe/AQriDGTqAUag7ni1Zv5P
         U6Eyh8UT4Z3H+aKZYHbZhI2jvd3myeR2ZFfKs9uiB23t+7d1JojO8OVle24Ej2gi+K9o
         aaxkeBHNChMM4wQR6RV1C14vCqNWGIjabeyP0oyaADhnjlK73v694ri5BDRb3wRem44C
         A+1fH52DidkzWAIWOwp6umZR1hWLclKVxCAgZEsLGAhmvg8SED0nf5SA2LguhPobQUVc
         cL4MOKHbseog6IcmkzK+EEKIUmr8eETy1TP1xxQAF1Zszd1nfM9jasZfQbs/ed2WDlbs
         07LA==
X-Gm-Message-State: AC+VfDw74T64DTHM2AvldiRBFG62jOwEr9cSVbsmu7PqFDF39670h/4N
	L32V6VAEYLCDbaaqNbXWiONj7g==
X-Google-Smtp-Source: ACHHUZ7cXxywMhTMsCCeZFCG2v76uB1SI9E//UYkMAB7ugfsk2mA7bx7DzrpyQIaVH5nJKGzE6aICQ==
X-Received: by 2002:a05:6a20:12d1:b0:10c:6956:a23c with SMTP id v17-20020a056a2012d100b0010c6956a23cmr3057009pzg.25.1684862520815;
        Tue, 23 May 2023 10:22:00 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net. [198.0.35.241])
        by smtp.gmail.com with ESMTPSA id 139-20020a630591000000b0051baf3f1b3esm6359325pgf.76.2023.05.23.10.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 10:22:00 -0700 (PDT)
Date: Tue, 23 May 2023 10:21:59 -0700
From: Kees Cook <keescook@chromium.org>
To: Azeem Shaikh <azeemshaikh38@gmail.com>
Message-ID: <202305231021.1AF1342BF@keescook>
References: <20230523021943.2406847-1-azeemshaikh38@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230523021943.2406847-1-azeemshaikh38@gmail.com>
X-Spamd-Result: default: False [0.50 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.210.171:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B57FB3F681
X-Spamd-Bar: /
Message-ID-Hash: A3YIFN4UQBWEBDOGIJSKAGR24TKD6A7F
X-Message-ID-Hash: A3YIFN4UQBWEBDOGIJSKAGR24TKD6A7F
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, linux-hardening@vger.kernel.org, Gustavo Padovan <gustavo@padovan.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/sw_sync: Replace all non-returning strlcpy with strscpy
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A3YIFN4UQBWEBDOGIJSKAGR24TKD6A7F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, May 23, 2023 at 02:19:43AM +0000, Azeem Shaikh wrote:
> strlcpy() reads the entire source buffer first.
> This read may exceed the destination size limit.
> This is both inefficient and can lead to linear read
> overflows if a source string is not NUL-terminated [1].
> In an effort to remove strlcpy() completely [2], replace
> strlcpy() here with strscpy().
> No return values were used, so direct replacement is safe.
> 
> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html#strlcpy
> [2] https://github.com/KSPP/linux/issues/89
> 
> Signed-off-by: Azeem Shaikh <azeemshaikh38@gmail.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

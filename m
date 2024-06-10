Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C06A39026F0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Jun 2024 18:44:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3C5F44785
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Jun 2024 16:44:16 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by lists.linaro.org (Postfix) with ESMTPS id F34E34042C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jun 2024 16:44:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=mE3s8M7D;
	spf=pass (lists.linaro.org: domain of cmllamas@google.com designates 209.85.216.44 as permitted sender) smtp.mailfrom=cmllamas@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2c2d25b5432so116766a91.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jun 2024 09:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718037844; x=1718642644; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZWJrFt56Ba2XKaEKUnUCqUmu/jVW4Te91KO0JGqkT1U=;
        b=mE3s8M7DpC6TU2DUR2hmXzMHjdLARkb/vEL5aN0FHzTO7DF/mY+L7UpCIpMu8A8/Yj
         K8BHOprspJJhFomevtMUiRkvyZXvfRAQZn3yFHdXsvWuGh5kHdlA6xWBCvq6FxuVKePm
         +DnixpDTtTcyvWBTN4XmyxRzjcpsZwcbEkCVBMwklPg38gPXZzqjsKwXSibeBuXiZ1gY
         gqVZmuI1XegEAFEo1f8eVrx2RZIoqRxP4UrnEjlfDFaSTZ0lncU54fMYBp2HiEmibVJQ
         tTQ2skeu9+nWFft+PQwaR7HjNVap8C0eM0vP0QEKcqbZ/i574ZLYPC5zgzZz7jSowQXs
         Rhhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718037844; x=1718642644;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZWJrFt56Ba2XKaEKUnUCqUmu/jVW4Te91KO0JGqkT1U=;
        b=tZWNMcXrWjLa4y8v8OdK/diPkOLpvP4MzFQ55WnB2L6wpnbJ5mDvb3kMNiPjCm0u16
         qQ9XD4ZL5MoSLi5ARJq9qQlAj1GazCbyhm85yDmDSQvutf7KM+4Cx43QVPOY8OpInh3V
         x276+mukRW/mQDWZw3ZfF7hNo25DwdYOHKR+GreinEhFtarLll1cxAACdFbtVV1J7pj4
         YnOik4sJS7ux8qxDPt/CicfeX2BHwBUz0sTnsptQHKfr8ZySELsrzZgT2Lbtb6g1qKoW
         AVqvDN1cWl9H2ZSSw9lzMJajfdyDhqXCQmHvOkxrcQt7BcbzwpRVlKSWMXHKABtyOu1N
         v0jg==
X-Gm-Message-State: AOJu0YyDcfW9zISG04i/RQSytPHx5XrNxNCIw44RqDfC6UHlw2UTg/tr
	2+BYWUL2jifKJfNkN6eYf7xF5XwlmxOhnjLQZY3LYz5ArN6WBgX4l65M7TT5xA==
X-Google-Smtp-Source: AGHT+IFO/T7QbJyG6RfIGM4sbC0wUi2kSF81e1T/t2MsMvtblCbstqePphSLuWts4/pUFHivpG5mhw==
X-Received: by 2002:a17:90b:1c8c:b0:2c2:3de7:20c0 with SMTP id 98e67ed59e1d1-2c2bcc4cd43mr8521758a91.37.1718037843726;
        Mon, 10 Jun 2024 09:44:03 -0700 (PDT)
Received: from google.com (226.75.127.34.bc.googleusercontent.com. [34.127.75.226])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c28066d57esm11358284a91.19.2024.06.10.09.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 09:44:03 -0700 (PDT)
Date: Mon, 10 Jun 2024 16:43:59 +0000
From: Carlos Llamas <cmllamas@google.com>
To: Barry Song <21cnbao@gmail.com>
Message-ID: <ZmctTwAuzkObaXLi@google.com>
References: <20240606020213.49854-1-21cnbao@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240606020213.49854-1-21cnbao@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F34E34042C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.44:from];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: OFPAWOBYSLMZOKXAUWJOCQHZNJORHYQ7
X-Message-ID-Hash: OFPAWOBYSLMZOKXAUWJOCQHZNJORHYQ7
X-MailFrom: cmllamas@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, sumit.semwal@linaro.org, Brian.Starkey@arm.com, benjamin.gaignard@collabora.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, jstultz@google.com, linux-kernel@vger.kernel.org, tjmercier@google.com, v-songbaohua@oppo.com, hailong.liu@oppo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/heaps: Correct the types of fd_flags and heap_flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OFPAWOBYSLMZOKXAUWJOCQHZNJORHYQ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jun 06, 2024 at 02:02:13PM +1200, Barry Song wrote:
> From: Barry Song <v-songbaohua@oppo.com>
> 
> dma_heap_allocation_data defines the UAPI as follows:
> 
>  struct dma_heap_allocation_data {
>         __u64 len;
>         __u32 fd;
>         __u32 fd_flags;
>         __u64 heap_flags;
>  };
> 
> But dma heaps are casting both fd_flags and heap_flags into
> unsigned long. This patch makes dma heaps - cma heap and
> system heap have consistent types with UAPI.
> 
> Signed-off-by: Barry Song <v-songbaohua@oppo.com>
> ---

Looks good to me, thanks!

Reviewed-by: Carlos Llamas <cmllamas@google.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

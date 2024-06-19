Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CCC90F0D3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 16:37:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 694C744831
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 14:37:53 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by lists.linaro.org (Postfix) with ESMTPS id 9FDF743CCC
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 14:37:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=VZcuhorb;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.208.50 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-57d106e69a2so538541a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 07:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718807870; x=1719412670; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mW6qIwgaMhv1Ukx6IUSceUqe9uJpeRHrbJHiEQy9EwE=;
        b=VZcuhorbaIf7zlqXVGH/f9aEvmhb9OA2QO1/dNymJwqJl13Djyve6iqzY3g4gp2wug
         s8IO0yGhxU51tWap5kquPX85B+VO+ravUiUgjQIApthnfpjQc31L7ExGJutHAHVXcrmf
         feVF9MVfJTRFvuGV//z4S72BEPPvUgzQICSDHmKVfgMESrLFshQaXHa+3u2OaYMvxryH
         uSE8wYbQaBqsmZ8mum8XF5aEPNV3YsINrgpGQFe6d76TZ71UWIFD13Ck3sc4/oOYSvNi
         FwsE5kbz+78gOefdAThp0VLSQ1M/xIXe2n6pLLl53vD+J3CsKZM8XxEysGfwVdyVs4+K
         6kSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718807870; x=1719412670;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mW6qIwgaMhv1Ukx6IUSceUqe9uJpeRHrbJHiEQy9EwE=;
        b=eKML92O7fqQaI1Dlmp6wnoZMkgx68hUubt/qotyYYDKbyE8FXXOKPWLvBrJADfUgXl
         FoZM64tSkTSRBJJAmeHRC2RZMlc9A5IYxQYFTttBS3bb0cvUMZMM3XExHAvEZ1LCpCUv
         3fVGYVX07WTujY/q2C29DVCDcVzkq+M75hie3bHj9UoGdkSeiWK0OHMNYNBEf9fZNzm0
         frpj64OWc5PttdgVSZAH6Qvyikg0rs6OZxeYsjMsrk63S5qdzci5eI1Hc9F6ZK+Uj7So
         rdtrMlO8o1hJIeSwRkIKx+KssN5WxWC04ApnB9fo2eQEbcG/VFRILw0iyNS8jgAhvoQ2
         oBJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXC2hpBHpyLQbNviX4pBrWBUG7YNhSvVJPJz9N7YMmcfU0FBbgmd9GNwYdvpjGXt9sYVJU72YenVsA7uoiHBN8018byS0zbo7ASulid+Cs=
X-Gm-Message-State: AOJu0YyC4jSDmqylxeu5TTanC5Om0YYhtMLx+xsxNCm6Sf+M0csuL+fN
	aUet2kUtfjIsgplzvJgZn83lC1XJYHRqdTXphBtpnweSiy4EQb1rPGtM+aBCCnOEYxz6blPk1Et
	KW39ui6QgxnmXtnT+4/8fMVepwO0ZJ3inNIo8yGFz
X-Google-Smtp-Source: AGHT+IHuis2PWxnbeePb9S0U1LQ2x2sGfOwuZsNdXB0g7qlMm761qcR5dMpoqfdYtNv6UIguJ9ZLskZKA13dNPaiPkc=
X-Received: by 2002:a50:d4da:0:b0:57c:b82e:884b with SMTP id
 4fb4d7f45d1cf-57d06ade10bmr1620556a12.19.1718807870558; Wed, 19 Jun 2024
 07:37:50 -0700 (PDT)
MIME-Version: 1.0
References: <20240606020213.49854-1-21cnbao@gmail.com> <ZmctTwAuzkObaXLi@google.com>
In-Reply-To: <ZmctTwAuzkObaXLi@google.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 19 Jun 2024 20:07:38 +0530
Message-ID: <CAO_48GE_YHFFjKBb6hhZQ4--3j3H3+AUTaPkZWfHTGgBa=b78Q@mail.gmail.com>
To: Carlos Llamas <cmllamas@google.com>
X-Rspamd-Queue-Id: 9FDF743CCC
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.50:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lists.linaro.org,vger.kernel.org,arm.com,collabora.com,amd.com,lists.freedesktop.org,google.com,oppo.com];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,oppo.com:email];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TJ7AZJUV7K6JVUIIVJVRQKGW3VD7HOYO
X-Message-ID-Hash: TJ7AZJUV7K6JVUIIVJVRQKGW3VD7HOYO
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Barry Song <21cnbao@gmail.com>, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Brian.Starkey@arm.com, benjamin.gaignard@collabora.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, jstultz@google.com, linux-kernel@vger.kernel.org, tjmercier@google.com, v-songbaohua@oppo.com, hailong.liu@oppo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/heaps: Correct the types of fd_flags and heap_flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TJ7AZJUV7K6JVUIIVJVRQKGW3VD7HOYO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Barry,

On Mon, 10 Jun 2024 at 22:14, Carlos Llamas <cmllamas@google.com> wrote:
>
> On Thu, Jun 06, 2024 at 02:02:13PM +1200, Barry Song wrote:
> > From: Barry Song <v-songbaohua@oppo.com>
> >
> > dma_heap_allocation_data defines the UAPI as follows:
> >
> >  struct dma_heap_allocation_data {
> >         __u64 len;
> >         __u32 fd;
> >         __u32 fd_flags;
> >         __u64 heap_flags;
> >  };
> >
> > But dma heaps are casting both fd_flags and heap_flags into
> > unsigned long. This patch makes dma heaps - cma heap and
> > system heap have consistent types with UAPI.
> >
> > Signed-off-by: Barry Song <v-songbaohua@oppo.com>

Thanks for this cleanup; pushed to drm-misc-next.

> > ---
>
> Looks good to me, thanks!
>
> Reviewed-by: Carlos Llamas <cmllamas@google.com>


Best,
Sumit.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

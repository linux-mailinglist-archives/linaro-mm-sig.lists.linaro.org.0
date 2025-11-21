Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D75CC77785
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Nov 2025 06:52:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4FA33F9B1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Nov 2025 05:52:34 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id 991E23F9A9
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Nov 2025 05:52:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=HbAfcVfm;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.41 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b7277324054so252003666b.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 21:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763704338; x=1764309138; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=f3AJGPP8zMc+R4UOzL+aeZF1qHpaPM6Ue1kyKZrrIYA=;
        b=HbAfcVfmCSwCmoTqg+3HvfVrX49ED5p21G0odm4GpaAatUVrTUIweXOwHov6BLjy3R
         9wAiqJQBSoQHyPfF0lkQwQWG/3YDxNwwR0DC3wmXTi6oHZEe3gvGzqCKHdO/3zGiRm0K
         JGhx2gCW8Vf7Gtli/ficJgeWCwvjgkGPuJ5+VKy1J1JZwC/3Kay3r22Ob8n2LQbxQkq3
         8bGBt0VSoe8RrvtegzSuvtY/qUdR9AmzB7mVS1BRGL+4qBqcxSX4gXo4+onvjf8GL/PP
         cBLqvBfO8lwYYgd4MOSjFvu/l/OqLqwy4sqIWmn3oxs2wNNkmqPJfnpkmBpgQ+ATxYIL
         KbGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763704338; x=1764309138;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f3AJGPP8zMc+R4UOzL+aeZF1qHpaPM6Ue1kyKZrrIYA=;
        b=BwKP0Z7Fo9Add7SYvYGhnhxQp1sCgrASPzXwlQqd8Cah+MjCYGUCdJqdGXqPuTwzke
         nNVo8t9JrJIBNuUcDfwvUgRWCg5Y91xUFRMU+TZD+sEBLiN2W9UOayawOdeUd1kPBnpW
         bRecVdagnUENtaxvMic8C9rKrSuSgvng0W2oim+yjSle9UBeKW6f4RNgvCA5GkE1LZp7
         lwpn6DZdjeKO+y8io8FGhilXWghAmIaWeCIlxdoLsRtUN3JdRB/1uNTQCFfjArITh4GJ
         WjGDTiPB5hIJFvVPC7a7iBEtztbpfE1mI6l67MIulspuL5+fV9ELwgD32OVLFJLrkVR0
         LPSw==
X-Gm-Message-State: AOJu0YzcRfUZOURoVy5Sk9JmZ8ctwZ4iDqLmjbZLQ2OYwsCnIfsdH5l2
	VM8z6nM6kODticO4bNra426yx1OwhvEqzK9iHdS2fSHrG6GFoSYdAFR36O42FNHkVcTj9h4u45z
	CBIa20Y4VENbRgbPr/o4cFwC0RMaWngyLcgXNwBMzdHuS
X-Gm-Gg: ASbGnctaufwTPPoXPRP290X7ceA0fVHkGFvN6VFipPEdC9MyCF3wRbUqOF73V3Owk9r
	z1/LFjB+/6uZs7mivBl1xa861DFww9DsO9n7WTGluN3aQZByPiG+JIX44z3mAebp4lxTCzKs2ec
	u/UuE35m0DHNXE4VlAKuiff1Uof3/XKa/9AwXlkdJG7W+i8abgz7k4uFsSWpF2xjfdqyX4TL/90
	iKKsrQuuxMcPPtpb86aaHwk+dNEeEDMc5QGgV3WfGrgEoQrJiGqGp04szO5xtgOoTRmLFN65w+G
	utZ6GA==
X-Google-Smtp-Source: AGHT+IH2Ft4P3PaBHYHUb9eBoowl1r0fF++S8Pm7hX7zw/Psj+ebZMqK+8HVlDkHZMDyBQFS0hAWL9JagTsIi4EtO7k=
X-Received: by 2002:a17:907:9611:b0:b73:8b79:a322 with SMTP id
 a640c23a62f3a-b7671549d5amr89779966b.11.1763704338528; Thu, 20 Nov 2025
 21:52:18 -0800 (PST)
MIME-Version: 1.0
References: <20251021042022.47919-1-21cnbao@gmail.com> <CAGsJ_4zPrgkb37VCfY+C8Dn6dS4LmSMrHnfU7Oy4bR19yhxbAA@mail.gmail.com>
In-Reply-To: <CAGsJ_4zPrgkb37VCfY+C8Dn6dS4LmSMrHnfU7Oy4bR19yhxbAA@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Fri, 21 Nov 2025 11:22:07 +0530
X-Gm-Features: AWmQ_bkvqJFF6U-BXLQ5aYDwfQ_Tm4IRMssNoeoYXGILQhoCtvIipXPadVOiAf8
Message-ID: <CAO_48GFhmJoivvaPFFxyuA+UH9woC1JoJE4=HeKa2nmPGA53-g@mail.gmail.com>
To: Barry Song <21cnbao@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.41:from];
	URIBL_BLOCKED(0.00)[mail-ej1-f41.google.com:rdns,mail-ej1-f41.google.com:helo,linaro.org:dkim,linaro.org:from_smtp,linaro.org:from_mime];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.218.41:from];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 991E23F9A9
X-Spamd-Bar: ----
Message-ID-Hash: G3AOQU5WXS77EG56SZAGT6KOEH2G5WVP
X-Message-ID-Hash: G3AOQU5WXS77EG56SZAGT6KOEH2G5WVP
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Brian.Starkey@arm.com, benjamin.gaignard@collabora.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, jstultz@google.com, tjmercier@google.com, v-songbaohua@oppo.com, zhengtangquan@oppo.com, marcin.slusarz@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: system_heap: use larger contiguous mappings instead of per-page mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G3AOQU5WXS77EG56SZAGT6KOEH2G5WVP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Barry,

On Fri, 21 Nov 2025 at 06:54, Barry Song <21cnbao@gmail.com> wrote:
>
> Hi Sumit,
>
> >
> > Using the micro-benchmark below, we see that mmap becomes
> > 3.5X faster:
>
>
> Marcin pointed out to me off-tree that it is actually 35x faster,
> not 3.5x faster. Sorry for my poor math. I assume you can fix this
> when merging it?

Sure, I corrected this, and is merged to drm-misc-next

Thanks,
Sumit.
>
> >
> > W/ patch:
> >
> > ~ # ./a.out
> > mmap 512MB took 200266.000 us, verify OK
> > ~ # ./a.out
> > mmap 512MB took 198151.000 us, verify OK
> > ~ # ./a.out
> > mmap 512MB took 197069.000 us, verify OK
> > ~ # ./a.out
> > mmap 512MB took 196781.000 us, verify OK
> > ~ # ./a.out
> > mmap 512MB took 198102.000 us, verify OK
> > ~ # ./a.out
> > mmap 512MB took 195552.000 us, verify OK
> >
> > W/o patch:
> >
> > ~ # ./a.out
> > mmap 512MB took 6987470.000 us, verify OK
> > ~ # ./a.out
> > mmap 512MB took 6970739.000 us, verify OK
> > ~ # ./a.out
> > mmap 512MB took 6984383.000 us, verify OK
> > ~ # ./a.out
> > mmap 512MB took 6971311.000 us, verify OK
> > ~ # ./a.out
> > mmap 512MB took 6991680.000 us, verify OK
>
>
> Thanks
> Barry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

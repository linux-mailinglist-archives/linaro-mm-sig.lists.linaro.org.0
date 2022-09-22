Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E392C5E6EC9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 23:49:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E679A3F61E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Sep 2022 21:49:17 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	by lists.linaro.org (Postfix) with ESMTPS id D2D403F49E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 21:49:11 +0000 (UTC)
Received: by mail-pj1-f53.google.com with SMTP id o99-20020a17090a0a6c00b002039c4fce53so3815490pjo.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 14:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date;
        bh=HR7XDnra6aPtamhjv2ZebPHNXJTov7JqNOvsimryjio=;
        b=SzXIxv6C1tCw5E3cmrWDJ/hT6jlBfbW+dFuRj81LBsGuMMA1AsgUJRpxwVsVSvwR2s
         HjojE3kOc43go5tDIXGrMTl5j+2eCPTyOeyLkDKEdQ6zWs58EaHgr7cs3m2ezx/7gyPH
         QYSAs2hvSa7UX6V/rYFn8OuKvubD7Tx83ZZcc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=HR7XDnra6aPtamhjv2ZebPHNXJTov7JqNOvsimryjio=;
        b=aFuJZ+0IbevQIgiGnsOGZiNXEz2ztHWSLlkdw+XhkU1DgrxT+vjYibLyX1duEh4YWB
         a7bs0/iZS+cyWMG7+JpI6/rJqa1JJZPLgJPriVyNj7+96YVJQ5Q7UbtOFY1D2UlmUMFi
         7GwvcBG44IsRc1e5pZzzbhFBaWPtePWCZUyyX3eq60A9C0gLrnFMs+fiXMQFkCbNrbtM
         UFdrjGxVR9DBYkUDNhAgiwtQ9hvukz26MZnd6iSqfnKw7fPlijVSi5Czqfn6+wpRgASV
         heYW9PQlhyelcrdm4zD4mED3XkTG4V5buJufYHsPGuTLwenbY+9w0TNWNtqFFtt99QX+
         BcOQ==
X-Gm-Message-State: ACrzQf3wH3HUP9Jh0ertum4rx5H75FajSLomVK5dl/7WffYrVGYm7GEe
	4bLLX+hnscIwsl8GWRdkhOVvww==
X-Google-Smtp-Source: AMsMyM7EVCvewBY8ReI9lCX0qEaIkOeoxfNJfZf95NgQUB74fHJwtUZioqBUOFwe31SWjNTGJEPjqg==
X-Received: by 2002:a17:902:d2d2:b0:177:4940:cc0f with SMTP id n18-20020a170902d2d200b001774940cc0fmr5257349plc.4.1663883350927;
        Thu, 22 Sep 2022 14:49:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j6-20020a170902da8600b00176acc23a73sm4597636plx.281.2022.09.22.14.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 14:49:10 -0700 (PDT)
Date: Thu, 22 Sep 2022 14:49:08 -0700
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <202209221446.5E90AEED@keescook>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <673e425d-1692-ef47-052b-0ff2de0d9c1d@amd.com>
 <202209220845.2F7A050@keescook>
 <cb38655c-2107-bda6-2fa8-f5e1e97eab14@suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb38655c-2107-bda6-2fa8-f5e1e97eab14@suse.cz>
Message-ID-Hash: 2522T3U7LSXOGSY2L6OVY2EHWGY3ZGMN
X-Message-ID-Hash: 2522T3U7LSXOGSY2L6OVY2EHWGY3ZGMN
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Pekka Enberg <penberg@kernel.org>, Feng Tang <feng.tang@intel.com>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.lina
 ro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, linux-wireless@vger.kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org, Hyeonggon Yoo <42.hyeyoo@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] slab: Introduce kmalloc_size_roundup()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2522T3U7LSXOGSY2L6OVY2EHWGY3ZGMN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 22, 2022 at 11:05:47PM +0200, Vlastimil Babka wrote:
> On 9/22/22 17:55, Kees Cook wrote:
> > On Thu, Sep 22, 2022 at 09:10:56AM +0200, Christian K=F6nig wrote:
> > [...]
> > > So when this patch set is about to clean up this use case it should p=
robably
> > > also take care to remove ksize() or at least limit it so that it won'=
t be
> > > used for this use case in the future.
> >=20
> > Yeah, my goal would be to eliminate ksize(), and it seems possible if
> > other cases are satisfied with tracking their allocation sizes directly.
>=20
> I think we could leave ksize() to determine the size without a need for
> external tracking, but from now on forbid callers from using that hint to
> overflow the allocation size they actually requested? Once we remove the
> kasan/kfence hooks in ksize() that make the current kinds of usage possib=
le,
> we should be able to catch any offenders of the new semantics that would =
appear?

That's correct. I spent the morning working my way through the rest of
the ksize() users I didn't clean up yesterday, and in several places I
just swapped in __ksize(). But that wouldn't even be needed if we just
removed the kasan unpoisoning from ksize(), etc.

I am tempted to leave it __ksize(), though, just to reinforce that it's
not supposed to be used "normally". What do you think?

--=20
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

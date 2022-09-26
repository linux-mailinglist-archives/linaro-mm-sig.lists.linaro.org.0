Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC355E9783
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Sep 2022 02:41:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7C1241077
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Sep 2022 00:41:31 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by lists.linaro.org (Postfix) with ESMTPS id 7A0AF3F1C0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Sep 2022 00:41:26 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id d64-20020a17090a6f4600b00202ce056566so10879351pjk.4
        for <linaro-mm-sig@lists.linaro.org>; Sun, 25 Sep 2022 17:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date;
        bh=Ee6jY7viFUfMjAsx1AOZFi9ykD0TZlKjDDVt7+BAWpA=;
        b=Tymc3mQ6yYtKo/fUwb0pntTGEsuDmA3KGe5ZainSrzJcqfvTUXGD6g4AS/QDrdEz1m
         IPp9Tld0kqL2gFrY1NTkahNxDsLTe8rCfVZ7Sf6Yy58l+LrHh3LtaZFzBUsKT5oECTI8
         ASxk03BGu9JGtTcAH5Y41r1unU3COw5iwE/sg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Ee6jY7viFUfMjAsx1AOZFi9ykD0TZlKjDDVt7+BAWpA=;
        b=3Zt0LowjoTL84b9MBSl+WECJBC/EvmgbtHA89XpA1P8Yokk+dcwW8R8RZbcB5EyrnK
         Y6XOXWedpiYc5uQOTb7e+ADXXcDwSJgzMmqlnuTjahZ0Ux2hErP8lChjJ7Mh9K+H5HUV
         TMWXx71f9Ws+DaDpGAmZpaSyqhYinYQWWZpd+R1whBEVWIxXOYspKDpjF/zEFRCpu/Vb
         Y+inuHcSvw675c1GDp2YwS5YNuWE7rn/DbweQN+1RS3orSXqmbWAneBjIzJiU6IxpY/y
         rBS2M6wkY3ZsEMaR+gozgJ0D+SBaRztdakLYgdMlY6NMlbsgcDcZ0IkWgQ48p0b7DvUP
         L0aw==
X-Gm-Message-State: ACrzQf1ksGAwEN1GiRurMn1VtKLOVR3Nq5x4pGv1y6ReIGK6sRoL6VK0
	VCNkmnYZurBK+NXropZLCvsvhA==
X-Google-Smtp-Source: AMsMyM5VpMx54A01n2IxbeNYegjZcGYyyX6uNC/69UJfyYAh5+QLjokwGVSlu1kDsKsMHY6BwDZQuA==
X-Received: by 2002:a17:902:ea0e:b0:178:3d49:45ad with SMTP id s14-20020a170902ea0e00b001783d4945admr19810833plg.103.1664152885590;
        Sun, 25 Sep 2022 17:41:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l7-20020a622507000000b0053ebafa7c42sm10576331pfl.79.2022.09.25.17.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Sep 2022 17:41:24 -0700 (PDT)
Date: Sun, 25 Sep 2022 17:41:23 -0700
From: Kees Cook <keescook@chromium.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <202209251738.2E6B9C29D@keescook>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-5-keescook@chromium.org>
 <e340d993bce8e1b2742fba52ac6383771cfaddae.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e340d993bce8e1b2742fba52ac6383771cfaddae.camel@redhat.com>
Message-ID-Hash: PTECB4IMTIGVQQAAWW5OD6AT756EC2PA
X-Message-ID-Hash: PTECB4IMTIGVQQAAWW5OD6AT756EC2PA
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vlastimil Babka <vbabka@suse.cz>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-btrfs@vger.kernel.org, l
 inux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 04/16] skbuff: Phase out ksize() fallback for frag_size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PTECB4IMTIGVQQAAWW5OD6AT756EC2PA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 25, 2022 at 09:17:40AM +0200, Paolo Abeni wrote:
> On Fri, 2022-09-23 at 13:28 -0700, Kees Cook wrote:
> > All callers of APIs that allowed a 0-sized frag_size appear to be
> > passing actual size information already
>=20
> AFAICS, not yet:
>=20
> drivers/net/ethernet/qlogic/qed/qed_ll2.c:
> 	skb =3D build_skb(buffer->data, 0); // -> __build_skb(..., 0)=A0
> 		// ->  __build_skb_around()
>=20
> drivers/net/ethernet/broadcom/bnx2.c:
> 	skb =3D build_skb(data, 0);
>=20
> I guess some more drivers have calls leading to=A0
>=20
> 	__build_skb_around(...,  0)
>=20
> there are several call path to checks...

Ah-ha! Thank you. I will try to hunt these down -- I think we can't
remove the "secret resizing" effect of ksize() without fixing these.

> > [...]
> > diff --git a/net/core/skbuff.c b/net/core/skbuff.c
> > index 0b30fbdbd0d0..84ca89c781cd 100644
> > --- a/net/core/skbuff.c
> > +++ b/net/core/skbuff.c
> > @@ -195,7 +195,11 @@ static void __build_skb_around(struct sk_buff *skb=
, void *data,
> >  			       unsigned int frag_size)
> >  {
> >  	struct skb_shared_info *shinfo;
> > -	unsigned int size =3D frag_size ? : ksize(data);
> > +	unsigned int size =3D frag_size;
> > +
> > +	/* All callers should be setting frag size now? */
> > +	if (WARN_ON_ONCE(size =3D=3D 0))
> > +		size =3D ksize(data);
>=20
> At some point in the future, I guess we could even drop this check,
> right?

Alternatively, we might be able to ask the slab if "data" came from
kmalloc or a kmem_cache, and if the former, do:

	data =3D krealloc(kmalloc_size_roundup(ksize(data), ...)

But that seems ugly...

--=20
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

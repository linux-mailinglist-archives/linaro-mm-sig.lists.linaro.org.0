Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF1B4CAD09
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Mar 2022 19:12:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B2ED3EF0E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Mar 2022 18:12:02 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by lists.linaro.org (Postfix) with ESMTPS id 61BBA3EF08
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Mar 2022 18:11:59 +0000 (UTC)
Received: by mail-yb1-f177.google.com with SMTP id u61so5034767ybi.11
        for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Mar 2022 10:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jlekstrand-net.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0pWN2dKIg9XryvMBraoUF1cew0E/sHU34qoLSFEQCrA=;
        b=sYKFOj42/HySvYws3MdHCUayKpG+YaIFKIWqT8nsne7VQFM8GLwKo0oQy6Jtg3FHYo
         NZPlAV0PkkkNjCo32kWWfJGblzroJ7z9riUFqdTdQmsMdZCPGA6iYRVU8uGrZT27yiQ0
         UC/WeENHOgzUh4tVCZA/sdhKkA1U11k2FmXmV/sGJrRprmIe3d1BFiED9MJJxcYkUzJd
         8UFDOGIm++ljEHTg1NU1sDQp45B0m5KqhZozSoOmvEg/3R4BW85TrczfkJvowKla2Ovl
         9KtuGXiEIaHFNGU7W0bcPjEguZ9piZNx5UTXgA4iOActA2AYMs+U38GGWWo+829Q3PTJ
         tcCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0pWN2dKIg9XryvMBraoUF1cew0E/sHU34qoLSFEQCrA=;
        b=c7wx6x7q6rPMMPBbvGci1K0EYIBFaRN5DKDTdKACm8ZOJBVD7GRIcATrEvdQnzI0AA
         S7e1J62xBdhr/KQ4YcH3l2sByEpK/wdq7VmS+EzvOfc7p0jCeFX48vjlsfzYWBcJqzZD
         M1mzoqcmjq62H6u2jr+lKS7j91rwXPIPUahzrPYy5HEy/pECFJOvpt6D7ueCvexi8lET
         55BGfTzs7S8jK5uZFG9VHzoElN2DMxhuZw8Og2jobECo3atoJhvJu6aSl4Hk6+iM2IJ4
         YoJwTl1Nx5/gcAtG6B7Xt6PJ/jNCl0QlxLSG/l+CY3/TkI2gQgD0ORMxcfzVgA/wP7zH
         s8fg==
X-Gm-Message-State: AOAM533dlvJw2a5B81fyVJNH3dyyzu8yueBuRV5aSbn1EC+AzknOhh2v
	a9PW47Uk4k7RVj0NBdWWaQe2ICXC9tWjN1+uxGrnsw==
X-Google-Smtp-Source: ABdhPJw1lCbKgHxLoRX5mGupHtnZmtwKOfIAMH9+crq4EO4huU6bvFGLwrmcptWxikeSK9FeYLsQH8BqOReqjkTKz/8=
X-Received: by 2002:a05:6902:c2:b0:624:3d60:d927 with SMTP id
 i2-20020a05690200c200b006243d60d927mr28357327ybs.577.1646244718871; Wed, 02
 Mar 2022 10:11:58 -0800 (PST)
MIME-Version: 1.0
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-21-christian.koenig@amd.com> <YcOhJfy3O7lydic8@phenom.ffwll.local>
In-Reply-To: <YcOhJfy3O7lydic8@phenom.ffwll.local>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 2 Mar 2022 12:11:48 -0600
Message-ID: <CAOFGe96E9fopQ3ipeQWWdnjc54j_gvhb3rrEQ-cbrHW-My035A@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID-Hash: QKWGSLE5URBCPLHOBGQBK65PWW2KGJNO
X-Message-ID-Hash: QKWGSLE5URBCPLHOBGQBK65PWW2KGJNO
X-MailFrom: jason@jlekstrand.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 20/24] dma-buf: add DMA_RESV_USAGE_KERNEL
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QKWGSLE5URBCPLHOBGQBK65PWW2KGJNO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2829130952217494367=="

--===============2829130952217494367==
Content-Type: multipart/alternative; boundary="000000000000ae9a2305d9403789"

--000000000000ae9a2305d9403789
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 22, 2021 at 4:05 PM Daniel Vetter <daniel@ffwll.ch> wrote:

> On Tue, Dec 07, 2021 at 01:34:07PM +0100, Christian K=C3=B6nig wrote:
> > Add an usage for kernel submissions. Waiting for those
> > are mandatory for dynamic DMA-bufs.
> >
> > Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
>
> Again just skipping to the doc bikeshedding, maybe with more cc others
> help with some code review too.
>
> >  EXPORT_SYMBOL(ib_umem_dmabuf_map_pages);
> > diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> > index 4f3a6abf43c4..29d799991496 100644
> > --- a/include/linux/dma-resv.h
> > +++ b/include/linux/dma-resv.h
> > @@ -54,8 +54,30 @@ struct dma_resv_list;
> >   *
> >   * This enum describes the different use cases for a dma_resv object a=
nd
> >   * controls which fences are returned when queried.
> > + *
> > + * An important fact is that there is the order KERNEL<WRITE<READ and
> > + * when the dma_resv object is asked for fences for one use case the
> fences
> > + * for the lower use case are returned as well.
> > + *
> > + * For example when asking for WRITE fences then the KERNEL fences are
> returned
> > + * as well. Similar when asked for READ fences then both WRITE and
> KERNEL
> > + * fences are returned as well.
> >   */
> >  enum dma_resv_usage {
> > +     /**
> > +      * @DMA_RESV_USAGE_KERNEL: For in kernel memory management only.
> > +      *
> > +      * This should only be used for things like copying or clearing
> memory
> > +      * with a DMA hardware engine for the purpose of kernel memory
> > +      * management.
> > +      *
> > +         * Drivers *always* need to wait for those fences before
> accessing the
>

super-nit: Your whitespace is wrong here.


> s/need to/must/ to stay with usual RFC wording. It's a hard requirement o=
r
> there's a security bug somewhere.
>

Yeah, probably.  I like *must* but that's because that's what we use in the
VK spec.  Do whatever's usual for kernel docs.

Not sure where to put this comment but I feel like the way things are
framed is a bit the wrong way around.  Specifically, I don't think we
should be talking about what fences you must wait on so much as what fences
you can safely skip.  In the previous model, the exclusive fence had to be
waited on at all times and the shared fences could be skipped unless you
were doing something that would result in a new exclusive fence.  In this
new world of "it's just a bucket of fences", we need to be very sure the
waiting is happening on the right things.  It sounds (I could be wrong)
like USAGE_KERNEL is the new exclusive fence.  If so, we need to make it
virtually impossible to ignore.

Sorry if that's a bit of a ramble.  I think what I'm saying is this:  In
whatever helpers or iterators we have, be that get_singleton or iter_begin
or whatever, we need to be sure we specify things in terms of exclusion and
not inclusion.  "Give me everything except implicit sync read fences"
rather than "give me implicit sync write fences".  If having a single,
well-ordered enum is sufficient for that, great.  If we think we'll ever
end up with something other than a strict ordering, we may need to re-think
a bit.

Concerning well-ordering... I'm a bit surprised to only see three values
here.  I expected 4:

 - kernel exclusive, used for memory moves and the like
 - kernel shared, used for "I'm using this right now, don't yank it out
from under me" which may not have any implicit sync implications whatsoever
 - implicit sync write
 - implicit sync read

If we had those four, I don't think the strict ordering works anymore.
From the POV of implicit sync, they would look at the implicit sync
read/write fences and maybe not even kernel exclusive.  From the POV of
some doing a BO move, they'd look at all of them.  From the POV of holding
on to memory while Vulkan is using it, you want to set a kernel shared
fence but it doesn't need to interact with implicit sync at all.  Am I
missing something obvious here?

--Jason



> > +      * resource protected by the dma_resv object. The only exception
> for
> > +      * that is when the resource is known to be locked down in place =
by
> > +      * pinning it previously.
>
> Is this true? This sounds more confusing than helpful, because afaik in
> general our pin interfaces do not block for any kernel fences. dma_buf_pi=
n
> doesn't do that for sure. And I don't think ttm does that either.
>
> I think the only safe thing here is to state that it's safe if a) the
> resource is pinned down and b) the callers has previously waited for the
> kernel fences.
>
> I also think we should put that wait for kernel fences into dma_buf_pin()=
,
> but that's maybe a later patch.
> -Daniel
>
>
>
> > +      */
> > +     DMA_RESV_USAGE_KERNEL,
> > +
> >       /**
> >        * @DMA_RESV_USAGE_WRITE: Implicit write synchronization.
> >        *
> > --
> > 2.25.1
> >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
>

--000000000000ae9a2305d9403789
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Dec 22, 2021 at 4:05 PM Daniel Vetter &lt;<a href=3D"mailto:=
daniel@ffwll.ch">daniel@ffwll.ch</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On Tue, Dec 07, 2021 at 01:34:07PM +0100, =
Christian K=C3=B6nig wrote:<br>
&gt; Add an usage for kernel submissions. Waiting for those<br>
&gt; are mandatory for dynamic DMA-bufs.<br>
&gt; <br>
&gt; Signed-off-by: Christian K=C3=B6nig &lt;<a href=3D"mailto:christian.ko=
enig@amd.com" target=3D"_blank">christian.koenig@amd.com</a>&gt;<br>
<br>
Again just skipping to the doc bikeshedding, maybe with more cc others<br>
help with some code review too.<br>
<br>
&gt;=C2=A0 EXPORT_SYMBOL(ib_umem_dmabuf_map_pages);<br>
&gt; diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h<br>
&gt; index 4f3a6abf43c4..29d799991496 100644<br>
&gt; --- a/include/linux/dma-resv.h<br>
&gt; +++ b/include/linux/dma-resv.h<br>
&gt; @@ -54,8 +54,30 @@ struct dma_resv_list;<br>
&gt;=C2=A0 =C2=A0*<br>
&gt;=C2=A0 =C2=A0* This enum describes the different use cases for a dma_re=
sv object and<br>
&gt;=C2=A0 =C2=A0* controls which fences are returned when queried.<br>
&gt; + *<br>
&gt; + * An important fact is that there is the order KERNEL&lt;WRITE&lt;RE=
AD and<br>
&gt; + * when the dma_resv object is asked for fences for one use case the =
fences<br>
&gt; + * for the lower use case are returned as well.<br>
&gt; + *<br>
&gt; + * For example when asking for WRITE fences then the KERNEL fences ar=
e returned<br>
&gt; + * as well. Similar when asked for READ fences then both WRITE and KE=
RNEL<br>
&gt; + * fences are returned as well.<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 enum dma_resv_usage {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/**<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * @DMA_RESV_USAGE_KERNEL: For in kernel memory m=
anagement only.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 *<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * This should only be used for things like copyi=
ng or clearing memory<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * with a DMA hardware engine for the purpose of =
kernel memory<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * management.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 *<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* Drivers *always* need to wait for=
 those fences before accessing the<br></blockquote><div><br></div><div>supe=
r-nit: Your whitespace is wrong here.<br></div><div>=C2=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
s/need to/must/ to stay with usual RFC wording. It&#39;s a hard requirement=
 or<br>
there&#39;s a security bug somewhere.<br></blockquote><div><br></div><div>Y=
eah, probably.=C2=A0 I like *must* but that&#39;s because that&#39;s what w=
e use in the VK spec.=C2=A0 Do whatever&#39;s usual for kernel docs.</div><=
div><br></div><div>Not sure where to put this comment but I feel like the w=
ay things are framed is a bit the wrong way around.=C2=A0 Specifically, I d=
on&#39;t think we should be talking about what fences you must wait on so m=
uch as what fences you can safely skip.=C2=A0 In the previous model, the ex=
clusive fence had to be waited on at all times and the shared fences could =
be skipped unless you were doing something that would result in a new exclu=
sive fence.=C2=A0 In this new world of &quot;it&#39;s just a bucket of fenc=
es&quot;, we need to be very sure the waiting is happening on the right thi=
ngs.=C2=A0 It sounds (I could be wrong) like USAGE_KERNEL is the new exclus=
ive fence.=C2=A0 If so, we need to make it virtually impossible to ignore.<=
/div><div><br></div><div>Sorry if that&#39;s a bit of a ramble.=C2=A0 I thi=
nk what I&#39;m saying is this:=C2=A0 In whatever helpers or iterators we h=
ave, be that get_singleton or iter_begin or whatever, we need to be sure we=
 specify things in terms of exclusion and not inclusion.=C2=A0 &quot;Give m=
e everything except implicit sync read fences&quot; rather than &quot;give =
me implicit sync write fences&quot;.=C2=A0 If having a single, well-ordered=
 enum is sufficient for that, great.=C2=A0 If we think we&#39;ll ever end u=
p with something other than a strict ordering, we may need to re-think a bi=
t.</div><div><br></div><div>Concerning well-ordering... I&#39;m a bit surpr=
ised to only see three values here.=C2=A0 I expected 4:</div><div><br></div=
><div>=C2=A0- kernel exclusive, used for memory moves and the like</div><di=
v>=C2=A0- kernel shared, used for &quot;I&#39;m using this right now, don&#=
39;t yank it out from under me&quot; which may not have any implicit sync i=
mplications whatsoever</div><div>=C2=A0- implicit sync write</div><div><div=
>=C2=A0- implicit sync read</div></div><div><br></div><div>If we had those =
four, I don&#39;t think the strict ordering works anymore.=C2=A0 From the P=
OV of implicit sync, they would look at the implicit sync read/write fences=
 and maybe not even kernel exclusive.=C2=A0 From the POV of some doing a BO=
 move, they&#39;d look at all of them.=C2=A0 From the POV of holding on to =
memory while Vulkan is using it, you want to set a kernel shared fence but =
it doesn&#39;t need to interact with implicit sync at all.=C2=A0 Am I missi=
ng something obvious here?</div><div><br></div><div>--Jason</div><div><br><=
/div><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
&gt; +=C2=A0 =C2=A0 =C2=A0 * resource protected by the dma_resv object. The=
 only exception for<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * that is when the resource is known to be locke=
d down in place by<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * pinning it previously.<br>
<br>
Is this true? This sounds more confusing than helpful, because afaik in<br>
general our pin interfaces do not block for any kernel fences. dma_buf_pin<=
br>
doesn&#39;t do that for sure. And I don&#39;t think ttm does that either.<b=
r>
<br>
I think the only safe thing here is to state that it&#39;s safe if a) the<b=
r>
resource is pinned down and b) the callers has previously waited for the<br=
>
kernel fences.<br>
<br>
I also think we should put that wait for kernel fences into dma_buf_pin(),<=
br>
but that&#39;s maybe a later patch.<br>
-Daniel<br>
<br>
<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0DMA_RESV_USAGE_KERNEL,<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/**<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * @DMA_RESV_USAGE_WRITE: Implicit write syn=
chronization.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 *<br>
&gt; -- <br>
&gt; 2.25.1<br>
&gt; <br>
<br>
-- <br>
Daniel Vetter<br>
Software Engineer, Intel Corporation<br>
<a href=3D"http://blog.ffwll.ch" rel=3D"noreferrer" target=3D"_blank">http:=
//blog.ffwll.ch</a><br>
</blockquote></div></div>

--000000000000ae9a2305d9403789--

--===============2829130952217494367==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2829130952217494367==--

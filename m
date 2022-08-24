Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 012AC59FDB1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 17:00:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E0CB3F60A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Aug 2022 15:00:32 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by lists.linaro.org (Postfix) with ESMTPS id 434C43F080
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 15:00:19 +0000 (UTC)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-3321c2a8d4cso467540697b3.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Aug 2022 08:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jlekstrand-net.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=NlA30wCNQDnOjjjKF7HU6lWAxCCPYoprJOItAj/oJ/w=;
        b=Jb8DHE+n06unNMHNok/Aat24//lOALYO/4AsJPJo+LKIEBcdmi5xVxlqAj3t6wLxAq
         d3Z6hWs9Jz1M70AO4PepHToJjkfseIGqCmVye/UZK8uEV9WBA8G2KFgk5R+WRqfn4TjQ
         qSu3Z0aRLXIoTP1qKBCmVaTZhV5N9KHLLCH8u1xw5MHf4ktjhLnJFnqqvUrUi6QOO4/a
         oa2cXPFb0bGX/mUfmPHSR5BpPJQa7d1XENWkVUIVZrsoOmipSFVaUnRhTLtNlVWdaBhZ
         Ukw4MEY4+2OT6jjlE1J8LCjH+DDngmlEptIFrueA7HE0b4OA1CwAkXnlYlUFSdjofl9g
         cRZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=NlA30wCNQDnOjjjKF7HU6lWAxCCPYoprJOItAj/oJ/w=;
        b=3YpCP9yACKsnRKkurYb6koJJC6JJFZYgg+ekjv9STQBb8pVRzT2RCI0JbNXljpW8Gx
         u7ir/HtReJJr4IgzNVg8XEp+hQID4lPephL3+PxcVzcRlCc1m5Jue2uj2KzWzed6QS2j
         G2maUyxltB95RzBqORdADtL2mgY/I0UmMQPTGncdAQg2GwIEkmOZFG0WCAAhMk5y7vkP
         bWc0LFQTtWM88U6sVtMHdTGkJWkvtWNrPPPaI5+y8buF8juqXe7py8uxE3J07UZjF261
         yOGpT3YwfXG1LfNCnaKEl06r3iMM1beKBnHTUSJO0CEmsjnIuh7v+lEeYvsLjVm2occ8
         DYyw==
X-Gm-Message-State: ACgBeo3mqV5jantfTyTQd4lPhwJDzd+1I5UyDofhRp7dZkZxBJqCOgBo
	IHYY3M6F/PVkU4Cgt8jCX0k3voUH8CrJrDHqlBkotg==
X-Google-Smtp-Source: AA6agR7J2f3w3OqkCyyMjVDoizFijrN4AvbYQUMrI0y3YdUCsSxbZmJZm30Zz7wGypxkGDFe1qpfQxaPQKq4jdUMd4Y=
X-Received: by 2002:a81:7cb:0:b0:334:f185:5ff6 with SMTP id
 194-20020a8107cb000000b00334f1855ff6mr31225783ywh.483.1661353218756; Wed, 24
 Aug 2022 08:00:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220810172617.140047-1-christian.koenig@amd.com>
In-Reply-To: <20220810172617.140047-1-christian.koenig@amd.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 24 Aug 2022 10:00:08 -0500
Message-ID: <CAOFGe94mLtLgg+Pu_L8LC3u515feg_YYJecezWL+Cr3ApFypOw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID-Hash: EZHUIPDI36TT6XAPLJNTECN6ADWVRSUY
X-Message-ID-Hash: EZHUIPDI36TT6XAPLJNTECN6ADWVRSUY
X-MailFrom: jason@jlekstrand.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma-resv: check if the new fence is really later
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EZHUIPDI36TT6XAPLJNTECN6ADWVRSUY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4633036123370204603=="

--===============4633036123370204603==
Content-Type: multipart/alternative; boundary="00000000000073688605e6fdf099"

--00000000000073688605e6fdf099
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 10, 2022 at 12:26 PM Christian K=C3=B6nig <
ckoenig.leichtzumerken@gmail.com> wrote:

> Previously when we added a fence to a dma_resv object we always
> assumed the the newer than all the existing fences.
>
> With Jason's work to add an UAPI to explicit export/import that's not
> necessary the case any more. So without this check we would allow
> userspace to force the kernel into an use after free error.
>
> Since the change is very small and defensive it's probably a good
> idea to backport this to stable kernels as well just in case others
> are using the dma_resv object in the same way.
>

Especially in the new world of dma_resv being a "bag of fences", I think
this makes a lot of sense.

Reviewed-by: Jason Ekstrand <jason.ekstrand@collabora.com>


>
> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> ---
>  drivers/dma-buf/dma-resv.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index 205acb2c744d..e3885c90a3ac 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -295,7 +295,8 @@ void dma_resv_add_fence(struct dma_resv *obj, struct
> dma_fence *fence,
>                 enum dma_resv_usage old_usage;
>
>                 dma_resv_list_entry(fobj, i, obj, &old, &old_usage);
> -               if ((old->context =3D=3D fence->context && old_usage >=3D=
 usage)
> ||
> +               if ((old->context =3D=3D fence->context && old_usage >=3D=
 usage
> &&
> +                    dma_fence_is_later(fence, old)) ||
>                     dma_fence_is_signaled(old)) {
>                         dma_resv_list_set(fobj, i, fence, usage);
>                         dma_fence_put(old);
> --
> 2.25.1
>
>

--00000000000073688605e6fdf099
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Aug 10, 2022 at 12:26 PM Christian K=C3=B6nig &lt;<a href=3D=
"mailto:ckoenig.leichtzumerken@gmail.com">ckoenig.leichtzumerken@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">P=
reviously when we added a fence to a dma_resv object we always<br>
assumed the the newer than all the existing fences.<br>
<br>
With Jason&#39;s work to add an UAPI to explicit export/import that&#39;s n=
ot<br>
necessary the case any more. So without this check we would allow<br>
userspace to force the kernel into an use after free error.<br>
<br>
Since the change is very small and defensive it&#39;s probably a good<br>
idea to backport this to stable kernels as well just in case others<br>
are using the dma_resv object in the same way.<br></blockquote><div><br></d=
iv><div>Especially in the new world of dma_resv being a &quot;bag of fences=
&quot;, I think this makes a lot of sense.</div><div><br></div><div>Reviewe=
d-by: Jason Ekstrand &lt;<a href=3D"mailto:jason.ekstrand@collabora.com">ja=
son.ekstrand@collabora.com</a>&gt;<br></div><div>=C2=A0</div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">
<br>
Signed-off-by: Christian K=C3=B6nig &lt;<a href=3D"mailto:christian.koenig@=
amd.com" target=3D"_blank">christian.koenig@amd.com</a>&gt;<br>
---<br>
=C2=A0drivers/dma-buf/dma-resv.c | 3 ++-<br>
=C2=A01 file changed, 2 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c<br>
index 205acb2c744d..e3885c90a3ac 100644<br>
--- a/drivers/dma-buf/dma-resv.c<br>
+++ b/drivers/dma-buf/dma-resv.c<br>
@@ -295,7 +295,8 @@ void dma_resv_add_fence(struct dma_resv *obj, struct dm=
a_fence *fence,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enum dma_resv_usage=
 old_usage;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dma_resv_list_entry=
(fobj, i, obj, &amp;old, &amp;old_usage);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((old-&gt;contex=
t =3D=3D fence-&gt;context &amp;&amp; old_usage &gt;=3D usage) ||<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((old-&gt;contex=
t =3D=3D fence-&gt;context &amp;&amp; old_usage &gt;=3D usage &amp;&amp;<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dma_=
fence_is_later(fence, old)) ||<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dma_f=
ence_is_signaled(old)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dma_resv_list_set(fobj, i, fence, usage);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dma_fence_put(old);<br>
-- <br>
2.25.1<br>
<br>
</blockquote></div></div>

--00000000000073688605e6fdf099--

--===============4633036123370204603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4633036123370204603==--

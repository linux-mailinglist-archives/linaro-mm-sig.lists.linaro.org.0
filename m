Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA76210AA8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2020 13:59:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7BB0A66561
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2020 11:59:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6C25D66587; Wed,  1 Jul 2020 11:59:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3403A66566;
	Wed,  1 Jul 2020 11:59:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C65CC66553
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2020 11:59:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B325466566; Wed,  1 Jul 2020 11:59:15 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id B269B66553
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2020 11:59:14 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id c25so3574018otf.7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Jul 2020 04:59:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gxl3lfKFFa5tO2EgfognG9ijCcu9AhbS5i22kiQaKjo=;
 b=QLOGaqR8skpxf9jdYZup83VjV7Tmsz79SIP+Qqd6B5tjq1+1iJ8RCkjH6LR7ViwTDk
 FoyODi8UH5SrQk7LA2iUC86HjG4ONLZRBI6/0noqsY1FylPwCYwhM9RXdKsG8WXvaA1O
 9XNI6AYurmmJica3TQarhfW0HJsxsO9nfeJ65RRbB9Pv610kczbX66NtJvtgNAENC2i2
 DSQFbI+0ac63z/6CQbFEB9vifY4flo/O95FkTKVJ5xPx2JyBwmZ7MnBD1VjogbQQjgY9
 Mh8HhCgg6buceKkywZQQc0bNantC0KN+5HW3Pcw28zyTCPNrY9ZfzHIq+LacRlIl7FmK
 +m1w==
X-Gm-Message-State: AOAM532aa2KDT45BiXQqsUldvdHneIqoBdbfjd32oRTPjYxQ3T+Mx0tq
 yyKGnT4NV6l0yWU+y3mVvWle4AwRTPmN+vNL1mYBIDrz
X-Google-Smtp-Source: ABdhPJyxqfsGvU0ZTX2fGv+npKJmkZe28dpAQSBhjdlsqn3wwFxafYEfz6yBdoaMuv4RmfFNcxArMAePU6WjmwwoJSo=
X-Received: by 2002:a9d:7c98:: with SMTP id q24mr12273455otn.164.1593604754152; 
 Wed, 01 Jul 2020 04:59:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200701112559.22669-1-christian.koenig@amd.com>
 <CAKMK7uHqNaQPwATQf=Jfs6oQ=YEemHSHTEtC2=VqvNf+bMh_sQ@mail.gmail.com>
In-Reply-To: <CAKMK7uHqNaQPwATQf=Jfs6oQ=YEemHSHTEtC2=VqvNf+bMh_sQ@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 1 Jul 2020 17:29:00 +0530
Message-ID: <CAO_48GEXg=P-giE5YF=1Z0XS-Nd+-enQv7QZcz6YMvYBgmRB6A@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] MAINTAINERS: Add myself as DMA-buf
	maintainer
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6214893689246467823=="
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

--===============6214893689246467823==
Content-Type: multipart/alternative; boundary="00000000000048b7b405a960053c"

--00000000000048b7b405a960053c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for all the good work here, Christian!

On Wed, 1 Jul 2020, 17:20 Daniel Vetter, <daniel@ffwll.ch> wrote:

> On Wed, Jul 1, 2020 at 1:26 PM Christian K=C3=B6nig
> <ckoenig.leichtzumerken@gmail.com> wrote:
> >
> > As discussed on the list.
> >
> > Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
>
> Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>

Acked-by: Sumit Semwal <sumit.semwal@linaro.org>

> ---
> >  MAINTAINERS | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 40474982a21d..5d7130f8d342 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -5089,6 +5089,7 @@ F:        fs/dlm/
> >
> >  DMA BUFFER SHARING FRAMEWORK
> >  M:     Sumit Semwal <sumit.semwal@linaro.org>
> > +M:     Christian K=C3=B6nig <christian.koenig@amd.com>
> >  L:     linux-media@vger.kernel.org
> >  L:     dri-devel@lists.freedesktop.org
> >  L:     linaro-mm-sig@lists.linaro.org (moderated for non-subscribers)
> > --
> > 2.20.1
> >
>
Best,
Sumit.

>

--00000000000048b7b405a960053c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Thanks for all the good work here, Christian!</div><=
div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, 1 Jul 2020, 17:20 Daniel Vetter, &lt;<a hre=
f=3D"mailto:daniel@ffwll.ch">daniel@ffwll.ch</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">On Wed, Jul 1, 2020 at 1:26 PM Christian K=C3=B6ni=
g<br>
&lt;<a href=3D"mailto:ckoenig.leichtzumerken@gmail.com" target=3D"_blank" r=
el=3D"noreferrer">ckoenig.leichtzumerken@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; As discussed on the list.<br>
&gt;<br>
&gt; Signed-off-by: Christian K=C3=B6nig &lt;<a href=3D"mailto:christian.ko=
enig@amd.com" target=3D"_blank" rel=3D"noreferrer">christian.koenig@amd.com=
</a>&gt;<br>
<br>
Acked-by: Daniel Vetter &lt;<a href=3D"mailto:daniel.vetter@ffwll.ch" targe=
t=3D"_blank" rel=3D"noreferrer">daniel.vetter@ffwll.ch</a>&gt;<br></blockqu=
ote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Acked-by: Sum=
it Semwal &lt;<a href=3D"mailto:sumit.semwal@linaro.org">sumit.semwal@linar=
o.org</a>&gt;</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
&gt; ---<br>
&gt;=C2=A0 MAINTAINERS | 1 +<br>
&gt;=C2=A0 1 file changed, 1 insertion(+)<br>
&gt;<br>
&gt; diff --git a/MAINTAINERS b/MAINTAINERS<br>
&gt; index 40474982a21d..5d7130f8d342 100644<br>
&gt; --- a/MAINTAINERS<br>
&gt; +++ b/MAINTAINERS<br>
&gt; @@ -5089,6 +5089,7 @@ F:=C2=A0 =C2=A0 =C2=A0 =C2=A0 fs/dlm/<br>
&gt;<br>
&gt;=C2=A0 DMA BUFFER SHARING FRAMEWORK<br>
&gt;=C2=A0 M:=C2=A0 =C2=A0 =C2=A0Sumit Semwal &lt;<a href=3D"mailto:sumit.s=
emwal@linaro.org" target=3D"_blank" rel=3D"noreferrer">sumit.semwal@linaro.=
org</a>&gt;<br>
&gt; +M:=C2=A0 =C2=A0 =C2=A0Christian K=C3=B6nig &lt;<a href=3D"mailto:chri=
stian.koenig@amd.com" target=3D"_blank" rel=3D"noreferrer">christian.koenig=
@amd.com</a>&gt;<br>
&gt;=C2=A0 L:=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:linux-media@vger.kernel.=
org" target=3D"_blank" rel=3D"noreferrer">linux-media@vger.kernel.org</a><b=
r>
&gt;=C2=A0 L:=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:dri-devel@lists.freedesk=
top.org" target=3D"_blank" rel=3D"noreferrer">dri-devel@lists.freedesktop.o=
rg</a><br>
&gt;=C2=A0 L:=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:linaro-mm-sig@lists.lina=
ro.org" target=3D"_blank" rel=3D"noreferrer">linaro-mm-sig@lists.linaro.org=
</a> (moderated for non-subscribers)<br>
&gt; --<br>
&gt; 2.20.1<br>
&gt;<br></blockquote></div></div><div dir=3D"auto">Best,</div><div dir=3D"a=
uto">Sumit.</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"></blockquote></div></div></div>

--00000000000048b7b405a960053c--

--===============6214893689246467823==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

--===============6214893689246467823==--

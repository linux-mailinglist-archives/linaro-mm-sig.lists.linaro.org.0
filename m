Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B30B66F5604
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:23:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B8CC3F952
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:23:45 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id 648D63EE2C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Apr 2023 07:24:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=qgDEtLJo;
	spf=pass (lists.linaro.org: domain of hackyzh002@gmail.com designates 209.85.218.52 as permitted sender) smtp.mailfrom=hackyzh002@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-94f6c285d92so1548364466b.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Apr 2023 00:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682580296; x=1685172296;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=n0x8yz/BH7Sp+Esx42OKv6E3BY74SAY231PEuV+HVic=;
        b=qgDEtLJoLUTp1mVpKJti0vgMciCsmbV9quipZsc1mmin8erWwYVALwvZuvna6cuqI/
         //NuiCub7siQYE4rQIDTMU+ODGSCUQNiqWTsDazHqwglwnBzNkFK1rzL8MayzaI/sBmt
         GS0HS9AZPT3XXwPZ1XBBIL1eDf+ZAm1/+ncpTSrh4YQLHa7qDZDJ85jkFDxloSXGF36t
         pLSZOk02UZ6SyvzfZRR6++apQn1eNSu4ciICWCEqxN3wmCO0WjEZ0SboQwBgoqCFXh+6
         V0mncZGSAy1OMRtce1v6dXhiOleUJGDQWGH92hZa/uDStDq2lZasPJEvYJ3kyrv4qDLV
         +dvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682580296; x=1685172296;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n0x8yz/BH7Sp+Esx42OKv6E3BY74SAY231PEuV+HVic=;
        b=By3qo8GIy8KFCW91vmlnXQe3yCRLCudwCHWJ+gPo/ZlJXKuotGYigAYsFsk65Nth0Z
         rWO4D9lVHd0B6BfpB78/YB1IKOcb9dkLYi9dKhFI9pwNSsokvtWzxzJsN+ag2j9RJIMp
         +bx8Jt+X4G8ZE2kl6hGkV5y2Ck3b13u0qWTZZ7yb06fPZdB3PQhz9WFVWySabiDYZfXa
         gN/9F0o28mZZVkz0ZAU9Jo/7uZNk9WQ6sSQm/GttqshQDnMME8mqrOihG1sv1rKH4O1z
         OP+pjgjivOyvFN7dGE16REfmBOj540mvmn9NOfYSj63zjoPv3u2gIlS3pY5MtD0mepdo
         PuPQ==
X-Gm-Message-State: AC+VfDxIuph6tI4huYWx625Ffwcq8VHNHdvrbi/f4USg/dHtV2h3UXD+
	9qhf2TwWe7oh7rFfViIdv+r+XP2ncLOfAg0A+JQ=
X-Google-Smtp-Source: ACHHUZ6MtYHlNvjJ9sRe22WzKbPWWOFUTw9vlD6bgF2wcZyljqJ1jfJlm8cKhraM2loDqlpT0O8sLNYfzHIj8twFO3I=
X-Received: by 2002:a17:906:6a28:b0:93e:8791:7d8e with SMTP id
 qw40-20020a1709066a2800b0093e87917d8emr810871ejc.2.1682580296267; Thu, 27 Apr
 2023 00:24:56 -0700 (PDT)
MIME-Version: 1.0
References: <20230419122058.3420-1-hackyzh002@gmail.com> <62ae58cb-9fec-37ca-fd40-12bf0c1c5ba3@amd.com>
 <CADnq5_MTgMtHM87YQJcZLcENevcHOuQihoTz-xRetypJ6BQSXQ@mail.gmail.com>
In-Reply-To: <CADnq5_MTgMtHM87YQJcZLcENevcHOuQihoTz-xRetypJ6BQSXQ@mail.gmail.com>
From: whitehat002 whitehat002 <hackyzh002@gmail.com>
Date: Thu, 27 Apr 2023 15:24:44 +0800
Message-ID: <CAF6NKdY49N09+ubFrOfbr9Pj+6EK5U4G0_nmR-d6Sz1keZ_5Jg@mail.gmail.com>
To: Alex Deucher <alexdeucher@gmail.com>
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.52:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-0.997];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 648D63EE2C
X-Spamd-Bar: ----
X-MailFrom: hackyzh002@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YBLQK5M6EWHE4UADLIPOOOBZF57DHDH2
X-Message-ID-Hash: YBLQK5M6EWHE4UADLIPOOOBZF57DHDH2
X-Mailman-Approved-At: Wed, 03 May 2023 10:17:46 +0000
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, alexander.deucher@amd.com, Xinhui.Pan@amd.com, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, sumit.semwal@linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V3 1/2] drm/radeon: Fix integer overflow in radeon_cs_parser_init
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YBLQK5M6EWHE4UADLIPOOOBZF57DHDH2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5513376278546320208=="

--===============5513376278546320208==
Content-Type: multipart/alternative; boundary="000000000000dd835705fa4c4077"

--000000000000dd835705fa4c4077
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

What is the current status of this patch, has it been applied?

Alex Deucher <alexdeucher@gmail.com> =E4=BA=8E2023=E5=B9=B44=E6=9C=8819=E6=
=97=A5=E5=91=A8=E4=B8=89 21:49=E5=86=99=E9=81=93=EF=BC=9A

> Applied.  Thanks!
>
> Alex
>
> On Wed, Apr 19, 2023 at 8:24=E2=80=AFAM Christian K=C3=B6nig
> <christian.koenig@amd.com> wrote:
> >
> > Am 19.04.23 um 14:20 schrieb hackyzh002:
> > > The type of size is unsigned, if size is 0x40000000, there will be an
> > > integer overflow, size will be zero after size *=3D sizeof(uint32_t),
> > > will cause uninitialized memory to be referenced later
> > >
> > > Signed-off-by: hackyzh002 <hackyzh002@gmail.com>
> >
> > Reviewed-by: Christian K=C3=B6nig <christian.koenig@amd.com> for the se=
ries.
> >
> > > ---
> > >   drivers/gpu/drm/radeon/radeon_cs.c | 3 ++-
> > >   1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/radeon/radeon_cs.c
> b/drivers/gpu/drm/radeon/radeon_cs.c
> > > index 46a27ebf4..a6700d727 100644
> > > --- a/drivers/gpu/drm/radeon/radeon_cs.c
> > > +++ b/drivers/gpu/drm/radeon/radeon_cs.c
> > > @@ -270,7 +270,8 @@ int radeon_cs_parser_init(struct radeon_cs_parser
> *p, void *data)
> > >   {
> > >       struct drm_radeon_cs *cs =3D data;
> > >       uint64_t *chunk_array_ptr;
> > > -     unsigned size, i;
> > > +     u64 size;
> > > +     unsigned i;
> > >       u32 ring =3D RADEON_CS_RING_GFX;
> > >       s32 priority =3D 0;
> > >
> >
>

--000000000000dd835705fa4c4077
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br>What is the current status of this patch, h=
as it been applied?<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Alex Deucher &lt;<a href=3D"mailto:alexdeuche=
r@gmail.com">alexdeucher@gmail.com</a>&gt; =E4=BA=8E2023=E5=B9=B44=E6=9C=88=
19=E6=97=A5=E5=91=A8=E4=B8=89 21:49=E5=86=99=E9=81=93=EF=BC=9A<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">Applied.=C2=A0 Thanks!<br>
<br>
Alex<br>
<br>
On Wed, Apr 19, 2023 at 8:24=E2=80=AFAM Christian K=C3=B6nig<br>
&lt;<a href=3D"mailto:christian.koenig@amd.com" target=3D"_blank">christian=
.koenig@amd.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Am 19.04.23 um 14:20 schrieb hackyzh002:<br>
&gt; &gt; The type of size is unsigned, if size is 0x40000000, there will b=
e an<br>
&gt; &gt; integer overflow, size will be zero after size *=3D sizeof(uint32=
_t),<br>
&gt; &gt; will cause uninitialized memory to be referenced later<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: hackyzh002 &lt;<a href=3D"mailto:hackyzh002@gmail.=
com" target=3D"_blank">hackyzh002@gmail.com</a>&gt;<br>
&gt;<br>
&gt; Reviewed-by: Christian K=C3=B6nig &lt;<a href=3D"mailto:christian.koen=
ig@amd.com" target=3D"_blank">christian.koenig@amd.com</a>&gt; for the seri=
es.<br>
&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 =C2=A0drivers/gpu/drm/radeon/radeon_cs.c | 3 ++-<br>
&gt; &gt;=C2=A0 =C2=A01 file changed, 2 insertions(+), 1 deletion(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/gpu/drm/radeon/radeon_cs.c b/drivers/gpu/drm=
/radeon/radeon_cs.c<br>
&gt; &gt; index 46a27ebf4..a6700d727 100644<br>
&gt; &gt; --- a/drivers/gpu/drm/radeon/radeon_cs.c<br>
&gt; &gt; +++ b/drivers/gpu/drm/radeon/radeon_cs.c<br>
&gt; &gt; @@ -270,7 +270,8 @@ int radeon_cs_parser_init(struct radeon_cs_pa=
rser *p, void *data)<br>
&gt; &gt;=C2=A0 =C2=A0{<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct drm_radeon_cs *cs =3D data;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0uint64_t *chunk_array_ptr;<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0unsigned size, i;<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0u64 size;<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0unsigned i;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 ring =3D RADEON_CS_RING_GFX;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0s32 priority =3D 0;<br>
&gt; &gt;<br>
&gt;<br>
</blockquote></div>

--000000000000dd835705fa4c4077--

--===============5513376278546320208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5513376278546320208==--

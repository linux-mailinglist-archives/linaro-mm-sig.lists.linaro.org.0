Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6+UMMi+DQ2rRZgoAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 10:49:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C156E1CEC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 10:49:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=d0gXFUFc;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34B0240C71
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 08:49:50 +0000 (UTC)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	by lists.linaro.org (Postfix) with ESMTPS id 1E3DB401C7
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2026 08:49:39 +0000 (UTC)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-73a8715c841so327421137.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2026 01:49:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782809378; cv=none;
        d=google.com; s=arc-20260327;
        b=GuUtssC2HbIvAycEYlLd38kSaAvyP3RuXDzyPsbGVD5uxekO0WJ0Pn+9vmLvumfXPT
         +acZF5tJLNtzrfDII9r4fbgvPfW5g3nEwYsaPGKRYj1LYkOuYhhLgIHMLGQevYJw51Wh
         24wWzl8NpCRefk+1/UmtHJayYK/b1kmORium77DsQZGWmUKmQAqPJHFoeX+Sp3U0rTDn
         8dESbcs0Zz5Dbn1yuNNS5H0rW2kpsV24awNHaRfN3Y4NtVTkYPNEYJ+/JTpKf/Gu9a2E
         2hyPCOBvXAauiUaHN/Kfbal47QIM2JZDkeGRomgzWoeAhDVnqE8VlUnEdvXisLSkRZia
         3TUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nkg1g9KfQaIMmyy3lOx7xNubgzPj1KDzA/VLYGyXcVg=;
        fh=DNgHt+S+ccZkVM3C93Yfl1EAHmFu11j38f1IhuzK26M=;
        b=CqV07wjYETgFGjpYOcVTByo95l0vlcTpu7U25YCUvbyV5/eI0Gf3eBDUV6a9P9XJKQ
         tBVD8238JtcLuMA1au+SMrtRxBQz9KG1G+CtKichVklXDdvekcUqYYNpKGZt5oy7ejPr
         20uHemipmZ370YN0775Efe4rVzmhhnsWHRPJX8PeqrI+vgPd1Kt3Aj/cj0NpbQSjglni
         VpRTFlmWSHEafAcJDbxZpl3T/xAdnKRKFXj8YHQOP9R0VpKRc6oN6cbc+8cef2GZPnus
         BqW6NZ8/e3vyS3rktPXvNdOqda5pbSwOBxF3Gwkp1xa4WOw59BUtZxEmo/7peNhQVdmK
         uBSg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782809378; x=1783414178; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nkg1g9KfQaIMmyy3lOx7xNubgzPj1KDzA/VLYGyXcVg=;
        b=d0gXFUFczUMppAkPsUVvnj39sc1CAcjLsd4JzlH8bx9ZI4MNY3lc7+1bZqfJgAMagX
         FgkLHUnn/+G8OGj9+u31hj+kcB8D75psi0lyCiJ8moM1GODJR3RmJcXprVccglonaV9x
         kPL6yP4EYdtcRDvxnPP6g5YnPkLFOeSW3IDkDDtnccvH9ic96/ZsEPVXuWXJDZzCMj2/
         B3xW02xGELyZnFNIqqodiMA3EhUJn8e09SKtQKKNC+nCETDOyCkiFLu6Qz/mtYYBX8SV
         FpW+DdoruEIlj7l/8Qoqb16AJ+RzqRoUdQleq0QqhtBvx3lnJWjI8N9EY4xcyJRaYwQL
         CiZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782809378; x=1783414178;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nkg1g9KfQaIMmyy3lOx7xNubgzPj1KDzA/VLYGyXcVg=;
        b=Z35OCH0M0hD9E0tzjNO9C3tNRCahF4YkJ8mCeXAPp8KXPx1+veQzCsMEZo67LsQaE8
         9kWG9gHL/8vyyGmD1vZRRUHlD/miIi+oAlAj0mjdkbboaD0Qbwb0/GIMjfknpV+0Asm7
         cCTVdRXJJEd6phTpUDuVZBv8esPG5hlQoef0grCB6Yb5NWgw6rwmKX+GMyh50KPDNPIw
         6PJftbj4Wad1IrbLfqdXnztAMPH/AgjsJlscC3uf/7Mdd04LXcroch2JqGv8DrhjIJdY
         OKTThxMsdnp7APxt0I4VQFm/vIVbH8WFZar9XDI65x1a188+8eqRTEewwUNkAkg0j/A0
         u/WQ==
X-Forwarded-Encrypted: i=1; AHgh+RoB8oyoB3tD25XwnL8mcuub4TelyxJ6hjjo+Qg7Cvs5J9IzAYKSeDmpbAG9pcMpXD0a0LO1B5cOS5jPtc4G@lists.linaro.org
X-Gm-Message-State: AOJu0YzB6zVCPxAqsPL2wveJbkpTTSguW7fnvYNoLwaMSvxlP+qKClkw
	tWKu5TaWf8mvLV1ia4+aP3nSO8vA6BvFoENdaEPc+/J/QRSPm2AYnJr15NdMxnXEFV+sV6W9JLa
	9e4wGpad6AEnd9Q/nuxDWePgBrde7s+A=
X-Gm-Gg: AfdE7ckBnhbYlYIuVvJ63dW7uMFAJTB3HAteo35VpsWL4+Pt2afpLQDa0llpThl2jk4
	IEc3pnMi+9Ms4VscCsSUdDYOStczYUlaigATouUs9sFBUzsNYRnU6sjTmLBlK1qNb35CcTlw3MC
	cQlHvD6IfNIKYg699mPwFQRb0ywZ2N0XPkm8lSO0n1PyeeuViInnJpm9S0d3cvriGP8eSMfj7Ba
	ogFF5IqfHd2vCkkgJHxkv+2LK1LysCsqp/8HktE6yk18SczNvb2XnUfwa85L9KU2CxrDlZVT8vV
	AlNJAnM=
X-Received: by 2002:a05:6102:e07:b0:739:d787:beb with SMTP id
 ada2fe7eead31-73a3841f1e2mr1545143137.14.1782809378511; Tue, 30 Jun 2026
 01:49:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260630060436.1527498-1-shoubaineng@gmail.com> <0a02f85f-088c-4479-9e58-3b564931bfd6@amd.com>
In-Reply-To: <0a02f85f-088c-4479-9e58-3b564931bfd6@amd.com>
From: =?UTF-8?B?5a+/5p+P6IO9?= <shoubaineng@gmail.com>
Date: Tue, 30 Jun 2026 16:49:27 +0800
X-Gm-Features: AVVi8CeLetgT-SwP4GUoBph4oJYsKu-80xRLbFAW7TuNCs8tbUmCK1xBmOq6kQs
Message-ID: <CAGCp47wiEpG59KhaRRMs37RtPm5XvNy1x1sKc_TP94rS87rf5Q@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: -----
Message-ID-Hash: ENM2I5SMY7UDQAFW467Z6WCNO36RHJ6M
X-Message-ID-Hash: ENM2I5SMY7UDQAFW467Z6WCNO36RHJ6M
X-MailFrom: shoubaineng@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: sumit.semwal@linaro.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, phasta@kernel.org, tursulin@ursulin.net, akash.goel@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/test: add KUnit case for dma_fence_dedup_array() empty input
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ENM2I5SMY7UDQAFW467Z6WCNO36RHJ6M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1440826598029870251=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:phasta@kernel.org,m:tursulin@ursulin.net,m:akash.goel@arm.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 54C156E1CEC

--===============1440826598029870251==
Content-Type: multipart/alternative; boundary="000000000000b55ef4065574a789"

--000000000000b55ef4065574a789
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Christian! size_t is a nice fit.  It removes the negative-input
concern Philipp raised in one shot. Looking forward to seeing
the cleanup land.

Regards,
Baineng

Christian K=C3=B6nig <christian.koenig@amd.com> =E4=BA=8E2026=E5=B9=B46=E6=
=9C=8830=E6=97=A5=E5=91=A8=E4=BA=8C 16:29=E5=86=99=E9=81=93=EF=BC=9A

> On 6/30/26 08:04, Baineng Shou wrote:
> > Add a KUnit case verifying that dma_fence_dedup_array() returns 0,
> > not 1, when called with num_fences =3D=3D 0. This locks down the
> > contract documented in the kernel-doc and prevents a regression
> > of commit 77a9298741f8 ("dma-fence: Make dma_fence_dedup_array()
> > robust against 0-count input").
> >
> > Suggested-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> > Signed-off-by: Baineng Shou <shoubaineng@gmail.com>
>
> Reviewed-by: Christian K=C3=B6nig <christian.koenig@amd.com>
>
> Going to push this to drm-misc-next later today. I also pinged our intern
> to write a cleanup patch whic consistently use size_t for the number of
> array elements in the code.
>
> Thanks,
> Christian.
>
> > ---
> >  drivers/dma-buf/st-dma-fence-unwrap.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/drivers/dma-buf/st-dma-fence-unwrap.c
> b/drivers/dma-buf/st-dma-fence-unwrap.c
> > index 4e7ee25372ba..72dea6091d58 100644
> > --- a/drivers/dma-buf/st-dma-fence-unwrap.c
> > +++ b/drivers/dma-buf/st-dma-fence-unwrap.c
> > @@ -370,6 +370,15 @@ static void test_unwrap_merge_seqno(struct kunit
> *test)
> >       dma_fence_put(f1);
> >  }
> >
> > +static void test_dedup_empty(struct kunit *test)
> > +{
> > +     struct dma_fence *fence[1] =3D { NULL };
> > +     int ret;
> > +
> > +     ret =3D dma_fence_dedup_array(fence, 0);
> > +     KUNIT_EXPECT_EQ(test, ret, 0);
> > +}
> > +
> >  static void test_unwrap_merge_order(struct kunit *test)
> >  {
> >       struct dma_fence *fence, *f1, *f2, *a1, *a2, *c1, *c2;
> > @@ -595,6 +604,7 @@ static struct kunit_case dma_fence_unwrap_cases[] =
=3D {
> >       KUNIT_CASE(test_unwrap_merge_order),
> >       KUNIT_CASE(test_unwrap_merge_complex),
> >       KUNIT_CASE(test_unwrap_merge_complex_seqno),
> > +     KUNIT_CASE(test_dedup_empty),
> >       {}
> >  };
> >
>
>

--000000000000b55ef4065574a789
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Christian! size_t is a nice fit.=C2=A0 It removes t=
he negative-input<br>concern Philipp raised in one shot. Looking forward to=
 seeing<br>the cleanup land.<br><br>Regards,<br>Baineng</div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">Christian K=C3=B6nig &lt;<a href=3D"mailto:christian.koenig@amd.com">chri=
stian.koenig@amd.com</a>&gt; =E4=BA=8E2026=E5=B9=B46=E6=9C=8830=E6=97=A5=E5=
=91=A8=E4=BA=8C 16:29=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On 6/30/26 08:04, Baineng Shou wrote:<br>
&gt; Add a KUnit case verifying that dma_fence_dedup_array() returns 0,<br>
&gt; not 1, when called with num_fences =3D=3D 0. This locks down the<br>
&gt; contract documented in the kernel-doc and prevents a regression<br>
&gt; of commit 77a9298741f8 (&quot;dma-fence: Make dma_fence_dedup_array()<=
br>
&gt; robust against 0-count input&quot;).<br>
&gt; <br>
&gt; Suggested-by: Christian K=C3=B6nig &lt;<a href=3D"mailto:christian.koe=
nig@amd.com" target=3D"_blank">christian.koenig@amd.com</a>&gt;<br>
&gt; Signed-off-by: Baineng Shou &lt;<a href=3D"mailto:shoubaineng@gmail.co=
m" target=3D"_blank">shoubaineng@gmail.com</a>&gt;<br>
<br>
Reviewed-by: Christian K=C3=B6nig &lt;<a href=3D"mailto:christian.koenig@am=
d.com" target=3D"_blank">christian.koenig@amd.com</a>&gt;<br>
<br>
Going to push this to drm-misc-next later today. I also pinged our intern t=
o write a cleanup patch whic consistently use size_t for the number of arra=
y elements in the code.<br>
<br>
Thanks,<br>
Christian.<br>
<br>
&gt; ---<br>
&gt;=C2=A0 drivers/dma-buf/st-dma-fence-unwrap.c | 10 ++++++++++<br>
&gt;=C2=A0 1 file changed, 10 insertions(+)<br>
&gt; <br>
&gt; diff --git a/drivers/dma-buf/st-dma-fence-unwrap.c b/drivers/dma-buf/s=
t-dma-fence-unwrap.c<br>
&gt; index 4e7ee25372ba..72dea6091d58 100644<br>
&gt; --- a/drivers/dma-buf/st-dma-fence-unwrap.c<br>
&gt; +++ b/drivers/dma-buf/st-dma-fence-unwrap.c<br>
&gt; @@ -370,6 +370,15 @@ static void test_unwrap_merge_seqno(struct kunit =
*test)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dma_fence_put(f1);<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt; +static void test_dedup_empty(struct kunit *test)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct dma_fence *fence[1] =3D { NULL };<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ret =3D dma_fence_dedup_array(fence, 0);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0KUNIT_EXPECT_EQ(test, ret, 0);<br>
&gt; +}<br>
&gt; +<br>
&gt;=C2=A0 static void test_unwrap_merge_order(struct kunit *test)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct dma_fence *fence, *f1, *f2, *a1, *a2,=
 *c1, *c2;<br>
&gt; @@ -595,6 +604,7 @@ static struct kunit_case dma_fence_unwrap_cases[] =
=3D {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0KUNIT_CASE(test_unwrap_merge_order),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0KUNIT_CASE(test_unwrap_merge_complex),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0KUNIT_CASE(test_unwrap_merge_complex_seqno),=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0KUNIT_CASE(test_dedup_empty),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0{}<br>
&gt;=C2=A0 };<br>
&gt;=C2=A0 <br>
<br>
</blockquote></div>

--000000000000b55ef4065574a789--

--===============1440826598029870251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1440826598029870251==--

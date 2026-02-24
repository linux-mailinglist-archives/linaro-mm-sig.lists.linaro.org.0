Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AKIMFEU4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:54:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E616F4121AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:54:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 007A144DDC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:40 +0000 (UTC)
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
	by lists.linaro.org (Postfix) with ESMTPS id D6372401E2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 09:17:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igel-co-jp.20230601.gappssmtp.com header.s=20230601 header.b=LwfRy+5U;
	spf=pass (lists.linaro.org: domain of mie@igel.co.jp designates 74.125.82.172 as permitted sender) smtp.mailfrom=mie@igel.co.jp;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=none
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-2b86ce04c5cso1808713eec.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 01:17:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771924637; cv=none;
        d=google.com; s=arc-20240605;
        b=Jfg9zTwuJh0DF6ywycq3iTkJ6US/O65yLTM1nC/jk46nZmhVBl9VGi9GazwNy3U8rQ
         Grt3Spyc2awRN66PX9EkW8vbZ9pSk6hGdTqiC7ltD3Gef/s5EcgF6xoIlym3b0yUGw8C
         xK6/tVusos8DlefkzzHX+GrBzc1OmcWMZWs0A6Glr4JwntlcYOfKSCQQ5vBILbfDLrOC
         GVVzNKvkxPNoTjXcmUPI/1DpFlg+ABk3EdYQVYgn2rVR7Qs1E1ee77C+zCiZfCmRUo/C
         5NhV8Gmuc5MO+ZNV/cFZq4XJ/tlhd2BnZin6lCQgu/4d/B7+WRNmu34DvUkvWWzMSlJY
         nTBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XR8aP+Chm5pZWVMcnfKqtDnaBKcWCGFiu874zEqwlNc=;
        fh=XwgrQ5O5Q1a9VPjaquLSoiMqW1Zq8mpsIEZkcMlC7Oo=;
        b=CdGhxvsKzMpmmlLYTXesl5RJIzBj2NT3yCSEBILs12+GBxtdxK74tjCxSagrmk7a+0
         Q4vuACZ79jzOV2V2Uqzz9AWd/Cw8ekdM556XXtRkUdRh0bMfDoOO3btLMDfnXq0HhY80
         hlpVA+ifwm+H2BZutfXFkJVR4CBeC3/a2grBCwUktVdds9uaHz4iV1mHjM+j8j0/jD1P
         t1tJME5n/6L+VLkrKtQk4gsBbmXPD3DAoAZdwrA/6aTg2h4Li0F3Mhx4WslRzhePvyuE
         /cIbXHJgOQHkVErMosaQ1/LlXsJPv6CaspgNOzVlBP0KtQDjZFAEtDAT2Kw4RxMJwAD2
         /8zw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=igel-co-jp.20230601.gappssmtp.com; s=20230601; t=1771924637; x=1772529437; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XR8aP+Chm5pZWVMcnfKqtDnaBKcWCGFiu874zEqwlNc=;
        b=LwfRy+5ULOqL5QVrllwO5njjTecGJ+b2RFVUNyhxGeNiSETnrdbXEtQAp+MtpopXu4
         n2HpbupxTA4UuXmgUBL/bjYFmIDHbIKB3hu2YMXBBthy0TXmIZ68V40IvRY73GGXaQiz
         KPn5py6Es1TviXY3dKPKE+gi9qBaGa2U8ER6EiRExvJp4e98wB9/ickeO3H0/snaXMB4
         QME6Vu8rqPFArj0mHZgSqy4ntasn6d3ULCs7xMGVe87kzkopgOHMFMR1Sgpnyzr78l4T
         5L0U5cAFzZlSCZ+IDsJVMlMcIrF24HKTILuxhYBwB//89KlMRzdjnuFnVXxWcqE6YnOP
         TlHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771924637; x=1772529437;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XR8aP+Chm5pZWVMcnfKqtDnaBKcWCGFiu874zEqwlNc=;
        b=Y1qVz9V4PY/YGX/9cuVr2/rb44neH6vEu/DojjSHjZUpgF0vxZGq1LC9ce6KTXv7m5
         Rqz/B2D7Yjnjb49Vv+U4r/vcsL0KPRyJ64TFDb7Wz2uzGBUE4TuV8RdNHLKId4awsdV5
         6MDDQYDjcw4/aUwBaf8+NJKq8ajExnH3kMRktS90QJJKWAxGSO8y0nTNmaESr3QOy5ic
         vIac0BKl28e3erUZ1K9B8P+vOO76qMDAPoVFjwRiGUlkaYuDAvl1d2DZJNPCpEHXYaiG
         wkN9q42jaXTLXet8N2MhPQ2HQjLaOzrC3avMYHFCx16tDIYRL/PTO1RT3BOf8NXo2oBi
         f54A==
X-Forwarded-Encrypted: i=1; AJvYcCU7l1AMDn0fRKc/uXotLJVWa2cxo0iXvrePojBTmXxF950UHpozSrPkeL6btFF71+/tSyYWivGBWGLKGugp@lists.linaro.org
X-Gm-Message-State: AOJu0YysPS9DJPqWPsAYjGccPW0VCuB+sOMd6vAGevPHvxRMSVSwksO5
	49qBuRacnI39QyBeuR64CbGs6mLTETQVgAc4LqpiLvR5QA6lyRxmahNlgGatJBuBG1TVbsYFiKj
	nc2qxXOeHaUSvE5xCmo6a2RWuRlgtY6Lvj04zQIv0UQ==
X-Gm-Gg: ATEYQzw4HGaJ0wcyuF1QmHFx6y+2BH3tuzv2ZbV+CCpXD3+aJ3dxQRSn4hSuNxf1PaH
	/w76/+/eOxd4AZRQYko9Ri46Msg8a2n52stZAA+oe9xxUOKGnEv7BOwXs1GXJm23QZS+JzZ6+kq
	aOcDNhbPQlfKAbEdw0KYLm5JYdfE6ZqrwcfKhABXkbQ7RATXBTE3vu1CgnEDM+Noszp91QZJb/b
	l1ohgSWXF+4apAK7rGhTTJpOKHGmOI2YffdFeIoWkPjdYNvaFn347YdDQL3CJrErSZwQzT65P4f
	SF8JjcyvXw2OV9btldJtwyRQS8jcUqytlIKMpadrOw==
X-Received: by 2002:a05:693c:25c7:b0:2ba:a1a5:b5b1 with SMTP id
 5a478bee46e88-2bd7b9efc61mr4352585eec.7.1771924636731; Tue, 24 Feb 2026
 01:17:16 -0800 (PST)
MIME-Version: 1.0
References: <20211122110817.33319-1-mie@igel.co.jp> <7b4d9e08-122b-4c4b-868e-d48ec0f59dce@linux.dev>
In-Reply-To: <7b4d9e08-122b-4c4b-868e-d48ec0f59dce@linux.dev>
From: Shunsuke Mie <mie@igel.co.jp>
Date: Tue, 24 Feb 2026 18:17:05 +0900
X-Gm-Features: AaiRm523ClyiyQXmdL-uksKH5W2fREzPeFn7QWjc8uEMQoCs4N1_XrtZBqD33kU
Message-ID: <CANXvt5pcCsTegAkHkgvUnOkQ+eya0zHZh_KE=eUpXEubpyymRw@mail.gmail.com>
To: Zhu Yanjun <yanjun.zhu@linux.dev>
X-Spamd-Bar: ----
X-MailFrom: mie@igel.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DYFKW5L6NUY3U5FVEVZD7YZOJG7VT6CE
X-Message-ID-Hash: DYFKW5L6NUY3U5FVEVZD7YZOJG7VT6CE
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:41:01 +0000
CC: Zhu Yanjun <zyjzyj2000@gmail.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, Jianxin Xiong <jianxin.xiong@intel.com>, Leon Romanovsky <leon@kernel.org>, Maor Gottlieb <maorg@nvidia.com>, Sean Hefty <sean.hefty@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, dhobsong@igel.co.jp, taki@igel.co.jp, etom@igel.co.jp
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v4 0/2] RDMA/rxe: Add dma-buf support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DYFKW5L6NUY3U5FVEVZD7YZOJG7VT6CE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1538186297777420795=="
X-Spamd-Result: default: False [1.49 / 15.00];
	DATE_IN_PAST(1.00)[1231];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mie@igel.co.jp,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.714];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,ffwll.ch,redhat.com,ziepe.ca,intel.com,kernel.org,nvidia.com,linaro.org,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,igel.co.jp];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[igel.co.jp];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linux.dev:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: E616F4121AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============1538186297777420795==
Content-Type: multipart/alternative; boundary="0000000000008a94ce064b8e5a78"

--0000000000008a94ce064b8e5a78
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Zhu Yanjun,

Thank you for reaching out and revisiting my 2021 proposal.

Regarding the current status, I haven't been able to make much progress
recently as other tasks have taken higher priority. However, I still
believe this integration is important.

From a technical perspective, as pointed out during the previous reviews,
there were indeed issues with how dma_buf_map was being used. To address
this in today's context, I believe we should transition to using iosys_map.

I am still interested in this direction. While my current bandwidth is
limited, I would welcome any collaboration=E2=80=94especially regarding the
implementation of iosys_map support within rxe or the RDMA core.

I'd be happy to discuss the technical details of this transition if you'd
like to dive deeper.

Best,
Shunsuke Mie


2026=E5=B9=B42=E6=9C=8819=E6=97=A5(=E6=9C=A8) 13:43 Zhu Yanjun <yanjun.zhu@=
linux.dev>:

> =E5=9C=A8 2021/11/22 3:08, Shunsuke Mie =E5=86=99=E9=81=93:
> > This patch series add a dma-buf support for rxe driver.
> >
> > A dma-buf based memory registering has beed introduced to use the memor=
y
> > region that lack of associated page structures (e.g. device memory and
> CMA
> > managed memory) [1]. However, to use the dma-buf based memory, each rdm=
a
> > device drivers require add some implementation. The rxe driver has not
> > support yet.
> >
> > [1] https://www.spinics.net/lists/linux-rdma/msg98592.html
> >
> > To enable to use the dma-buf memory in rxe rdma device, add some change=
s
> > and implementation in this patch series.
> >
> > This series consists of two patches. The first patch changes the IB cor=
e
> > to support for rdma drivers that has not dma device. The secound patch
> adds
> > the dma-buf support to rxe driver.
> >
> Hi, Shunsuke Mie
>
> I was revisiting your 2021 proposal around dma-buf integration with RDMA
> and the related discussions at the time.
>
> As you know, dma-buf usage in RDMA-related workflows has gained more
> traction recently, and we are seeing increasing interest in
> heterogeneous memory and cross-device buffer sharing. Given the changes
> in the ecosystem since then, I=E2=80=99m wondering whether you think the
> original direction might be worth reconsidering.
>
> Do you have any interest in continuing that line of work, or updating
> the design based on today=E2=80=99s context? If not, I=E2=80=99d still ap=
preciate your
> perspective on what you see as the main blockers from the previous
> discussions, and whether you think the landscape has changed enough to
> justify another attempt.
>
> Depending on the direction, we may consider exploring dma-buf support in
> rxe or at the core level, but I=E2=80=99d prefer to first understand your=
 view
> before moving forward.
>
> Zhu Yanjun
>
> > Related user space RDMA library changes are provided as a separate patc=
h.
> >
> > v4:
> > * Fix warnings, unused variable and casting
> > v3: https://www.spinics.net/lists/linux-rdma/msg106776.html
> > * Rebase to the latest linux-rdma 'for-next' branch (5.15.0-rc6+)
> > * Fix to use dma-buf-map helpers
> > v2: https://www.spinics.net/lists/linux-rdma/msg105928.html
> > * Rebase to the latest linux-rdma 'for-next' branch (5.15.0-rc1+)
> > * Instead of using a dummy dma_device to attach dma-buf, just store
> >    dma-buf to use software RDMA driver
> > * Use dma-buf vmap() interface
> > * Check to pass tests of rdma-core
> > v1: https://www.spinics.net/lists/linux-rdma/msg105376.html
> > * The initial patch set
> > * Use ib_device as dma_device.
> > * Use dma-buf dynamic attach interface
> > * Add dma-buf support to rxe device
> >
> > Shunsuke Mie (2):
> >    RDMA/umem: Change for rdma devices has not dma device
> >    RDMA/rxe: Add dma-buf support
> >
> >   drivers/infiniband/core/umem_dmabuf.c |  20 ++++-
> >   drivers/infiniband/sw/rxe/rxe_loc.h   |   2 +
> >   drivers/infiniband/sw/rxe/rxe_mr.c    | 113 +++++++++++++++++++++++++=
+
> >   drivers/infiniband/sw/rxe/rxe_verbs.c |  34 ++++++++
> >   include/rdma/ib_umem.h                |   1 +
> >   5 files changed, 166 insertions(+), 4 deletions(-)
> >
>
>

--0000000000008a94ce064b8e5a78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Zhu=C2=A0Yanjun,<div><br></div><div>Thank you for reach=
ing out and revisiting my 2021 proposal.<br><br>Regarding the current statu=
s, I haven&#39;t been able to make much progress recently as other tasks ha=
ve taken higher priority. However, I still believe this integration is impo=
rtant.<br><br>From a technical perspective, as pointed out during the previ=
ous reviews, there were indeed issues with how dma_buf_map was being used. =
To address this in today&#39;s context, I believe we should transition to u=
sing iosys_map.=C2=A0</div><div><br></div><div>I am still interested in thi=
s direction. While my current bandwidth is limited, I would welcome any col=
laboration=E2=80=94especially regarding the implementation of iosys_map sup=
port within rxe or the RDMA core.<br><br>I&#39;d be happy to discuss the te=
chnical details of this transition if you&#39;d like to dive deeper.<br><br=
>Best,</div><div>Shunsuke Mie<br><br></div></div><br><div class=3D"gmail_qu=
ote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">2026=E5=B9=
=B42=E6=9C=8819=E6=97=A5(=E6=9C=A8) 13:43 Zhu Yanjun &lt;<a href=3D"mailto:=
yanjun.zhu@linux.dev">yanjun.zhu@linux.dev</a>&gt;:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">=E5=9C=A8 2021/11/22 3:08, Shunsuke Mie=
 =E5=86=99=E9=81=93:<br>
&gt; This patch series add a dma-buf support for rxe driver.<br>
&gt; <br>
&gt; A dma-buf based memory registering has beed introduced to use the memo=
ry<br>
&gt; region that lack of associated page structures (e.g. device memory and=
 CMA<br>
&gt; managed memory) [1]. However, to use the dma-buf based memory, each rd=
ma<br>
&gt; device drivers require add some implementation. The rxe driver has not=
<br>
&gt; support yet.<br>
&gt; <br>
&gt; [1] <a href=3D"https://www.spinics.net/lists/linux-rdma/msg98592.html"=
 rel=3D"noreferrer" target=3D"_blank">https://www.spinics.net/lists/linux-r=
dma/msg98592.html</a><br>
&gt; <br>
&gt; To enable to use the dma-buf memory in rxe rdma device, add some chang=
es<br>
&gt; and implementation in this patch series.<br>
&gt; <br>
&gt; This series consists of two patches. The first patch changes the IB co=
re<br>
&gt; to support for rdma drivers that has not dma device. The secound patch=
 adds<br>
&gt; the dma-buf support to rxe driver.<br>
&gt; <br>
Hi, Shunsuke Mie<br>
<br>
I was revisiting your 2021 proposal around dma-buf integration with RDMA <b=
r>
and the related discussions at the time.<br>
<br>
As you know, dma-buf usage in RDMA-related workflows has gained more <br>
traction recently, and we are seeing increasing interest in <br>
heterogeneous memory and cross-device buffer sharing. Given the changes <br=
>
in the ecosystem since then, I=E2=80=99m wondering whether you think the <b=
r>
original direction might be worth reconsidering.<br>
<br>
Do you have any interest in continuing that line of work, or updating <br>
the design based on today=E2=80=99s context? If not, I=E2=80=99d still appr=
eciate your <br>
perspective on what you see as the main blockers from the previous <br>
discussions, and whether you think the landscape has changed enough to <br>
justify another attempt.<br>
<br>
Depending on the direction, we may consider exploring dma-buf support in <b=
r>
rxe or at the core level, but I=E2=80=99d prefer to first understand your v=
iew <br>
before moving forward.<br>
<br>
Zhu Yanjun<br>
<br>
&gt; Related user space RDMA library changes are provided as a separate pat=
ch.<br>
&gt; <br>
&gt; v4:<br>
&gt; * Fix warnings, unused variable and casting<br>
&gt; v3: <a href=3D"https://www.spinics.net/lists/linux-rdma/msg106776.html=
" rel=3D"noreferrer" target=3D"_blank">https://www.spinics.net/lists/linux-=
rdma/msg106776.html</a><br>
&gt; * Rebase to the latest linux-rdma &#39;for-next&#39; branch (5.15.0-rc=
6+)<br>
&gt; * Fix to use dma-buf-map helpers<br>
&gt; v2: <a href=3D"https://www.spinics.net/lists/linux-rdma/msg105928.html=
" rel=3D"noreferrer" target=3D"_blank">https://www.spinics.net/lists/linux-=
rdma/msg105928.html</a><br>
&gt; * Rebase to the latest linux-rdma &#39;for-next&#39; branch (5.15.0-rc=
1+)<br>
&gt; * Instead of using a dummy dma_device to attach dma-buf, just store<br=
>
&gt;=C2=A0 =C2=A0 dma-buf to use software RDMA driver<br>
&gt; * Use dma-buf vmap() interface<br>
&gt; * Check to pass tests of rdma-core<br>
&gt; v1: <a href=3D"https://www.spinics.net/lists/linux-rdma/msg105376.html=
" rel=3D"noreferrer" target=3D"_blank">https://www.spinics.net/lists/linux-=
rdma/msg105376.html</a><br>
&gt; * The initial patch set<br>
&gt; * Use ib_device as dma_device.<br>
&gt; * Use dma-buf dynamic attach interface<br>
&gt; * Add dma-buf support to rxe device<br>
&gt; <br>
&gt; Shunsuke Mie (2):<br>
&gt;=C2=A0 =C2=A0 RDMA/umem: Change for rdma devices has not dma device<br>
&gt;=C2=A0 =C2=A0 RDMA/rxe: Add dma-buf support<br>
&gt; <br>
&gt;=C2=A0 =C2=A0drivers/infiniband/core/umem_dmabuf.c |=C2=A0 20 ++++-<br>
&gt;=C2=A0 =C2=A0drivers/infiniband/sw/rxe/rxe_loc.h=C2=A0 =C2=A0|=C2=A0 =
=C2=A02 +<br>
&gt;=C2=A0 =C2=A0drivers/infiniband/sw/rxe/rxe_mr.c=C2=A0 =C2=A0 | 113 ++++=
++++++++++++++++++++++<br>
&gt;=C2=A0 =C2=A0drivers/infiniband/sw/rxe/rxe_verbs.c |=C2=A0 34 ++++++++<=
br>
&gt;=C2=A0 =C2=A0include/rdma/ib_umem.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A01 +<br>
&gt;=C2=A0 =C2=A05 files changed, 166 insertions(+), 4 deletions(-)<br>
&gt; <br>
<br>
</blockquote></div>

--0000000000008a94ce064b8e5a78--

--===============1538186297777420795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1538186297777420795==--

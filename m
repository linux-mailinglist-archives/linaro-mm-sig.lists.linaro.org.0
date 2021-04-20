Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 731A1365B72
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 16:49:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93B546683D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 14:49:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 82CB36683F; Tue, 20 Apr 2021 14:49:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB21A6683E;
	Tue, 20 Apr 2021 14:49:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1F8DC6683C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 14:49:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0AEBF6683E; Tue, 20 Apr 2021 14:49:11 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 965EB6683C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 14:49:09 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id e7so28937493wrs.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 07:49:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cdVh8MgJ3hW4eH9NelsGjOWmRUKen6Ny2zYwNZtusm0=;
 b=t/EuUE8Igxp6HfsulbivomgsdHyjolS+jamWH2WviITcmAz7iDKpyMHENg07bAT1cQ
 9boXgwTel1hj5kbBzUx3a9jvOS0GDxZvffThjfIPfl/HgR2u6JGuhE6yymctyMGg9oYe
 dWrZYZPT/jtN9Z5+cQojNWq1JBFirLTikXD9vG/Ci+NrnTbM+q5fPm7BTwXgc4TKM+vg
 Tva1z0UKmGD/MrY3eZ7zPCeQ5h0A+jwP4Kas00kNUww+OFFvdeLVDfh7A2tv3BUjdwU5
 ipM++nhv+h6NCPnFYx/h8kab+YGrEVfh8Vn6LbOYqJItgjx8WJgnQZTqiU9Z3NwsPtF+
 +edg==
X-Gm-Message-State: AOAM532Wk1HeOpBsGp26sIuU2bgoqa1JotTptiGpRNQOT2k1mzgdOzFH
 yKTE/Dqk3PuMS9n3ejjkXhktbtd61xk5eeeKqF/CmQ==
X-Google-Smtp-Source: ABdhPJzE4R91MpVGkN6iAOo5Axe07ZxsvgnvjbpeOJkCKLR5/LAD17zPHniT6BPdeCwP2Y05zVvzi7vUeydgGNH/YA8=
X-Received: by 2002:adf:eb0a:: with SMTP id s10mr21372540wrn.6.1618930148537; 
 Tue, 20 Apr 2021 07:49:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210416123352.10747-1-peter.enderborg@sony.com>
 <CAPj87rM9gaPS5SOHo3CKUU=5H0PDaG28r8BXimhVp-wmCbMvWA@mail.gmail.com>
 <9d4b7f7d-1a7d-0899-bf33-49fac1847bbe@sony.com>
In-Reply-To: <9d4b7f7d-1a7d-0899-bf33-49fac1847bbe@sony.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 20 Apr 2021 15:48:21 +0100
Message-ID: <CAPj87rNo2WS8A0BUoncZhZg4gMOcBrjOF5gxiAWrbpO6z1Rnqg@mail.gmail.com>
To: Peter Enderborg <Peter.Enderborg@sony.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Michal Hocko <mhocko@suse.com>, Matthew Wilcox <willy@infradead.org>,
 NeilBrown <neilb@suse.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Shakeel Butt <shakeelb@google.com>, Mike Rapoport <rppt@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Muchun Song <songmuchun@bytedance.com>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Roman Gushchin <guro@fb.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v2] dma-buf: Add DmaBufTotal counter in
	meminfo
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
Content-Type: multipart/mixed; boundary="===============2475675597077026977=="
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

--===============2475675597077026977==
Content-Type: multipart/alternative; boundary="0000000000006b8c7805c0688c24"

--0000000000006b8c7805c0688c24
Content-Type: text/plain; charset="UTF-8"

On Tue, 20 Apr 2021 at 14:46, <Peter.Enderborg@sony.com> wrote:

> On 4/20/21 3:34 PM, Daniel Stone wrote:
> > On Fri, 16 Apr 2021 at 13:34, Peter Enderborg <peter.enderborg@sony.com
> <mailto:peter.enderborg@sony.com>> wrote:
> >     This adds a total used dma-buf memory. Details
> >     can be found in debugfs, however it is not for everyone
> >     and not always available. dma-buf are indirect allocated by
> >     userspace. So with this value we can monitor and detect
> >     userspace applications that have problems.
> >
> >
> > FWIW, this won't work super well for Android where gralloc is
> implemented as a system service, so all graphics usage will instantly be
> accounted to it.
>
> This resource allocation is a big part of why we need it. Why should it
> not work?
>

Sorry, I'd somehow completely misread that as being locally rather than
globally accounted. Given that, it's more correct, just also not super
useful.

Some drivers export allocation tracepoints which you could use if you have
a decent userspace tracing infrastructure. Short of that, many drivers
export this kind of thing through debugfs already. I think a better
long-term direction is probably getting accounting from dma-heaps rather
than extending core dmabuf itself.

Cheers,
Daniel

--0000000000006b8c7805c0688c24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"">On Tue, 20 Apr 2021 at 1=
4:46, &lt;<a href=3D"mailto:Peter.Enderborg@sony.com">Peter.Enderborg@sony.=
com</a>&gt; wrote:</span><br></div><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">On 4/20/21 3:34 PM, Daniel Stone wrote=
:<br>&gt; On Fri, 16 Apr 2021 at 13:34, Peter Enderborg &lt;<a href=3D"mail=
to:peter.enderborg@sony.com" target=3D"_blank">peter.enderborg@sony.com</a>=
 &lt;mailto:<a href=3D"mailto:peter.enderborg@sony.com" target=3D"_blank">p=
eter.enderborg@sony.com</a>&gt;&gt; wrote:<br>&gt;=C2=A0 =C2=A0 =C2=A0This =
adds a total used dma-buf memory. Details<br>
&gt;=C2=A0 =C2=A0 =C2=A0can be found in debugfs, however it is not for ever=
yone<br>
&gt;=C2=A0 =C2=A0 =C2=A0and not always available. dma-buf are indirect allo=
cated by<br>
&gt;=C2=A0 =C2=A0 =C2=A0userspace. So with this value we can monitor and de=
tect<br>
&gt;=C2=A0 =C2=A0 =C2=A0userspace applications that have problems.<br>
&gt;<br>
&gt;<br>
&gt; FWIW, this won&#39;t work super well for Android where gralloc is impl=
emented as a system service, so all graphics usage will instantly be accoun=
ted to it.<br><br>
This resource allocation is a big part of why we need it. Why should it not=
 work?<br></blockquote><div><br></div><div>Sorry, I&#39;d somehow completel=
y misread that as being locally rather than globally accounted. Given that,=
 it&#39;s more correct, just also not super useful.</div><div><span style=
=3D""><br></span></div><div><span style=3D"">Some drivers export allocation=
 tracepoints which you could use if you have a decent userspace tracing inf=
rastructure. Short of that, many drivers export this kind of thing through =
debugfs already. I think a better long-term direction is probably getting a=
ccounting from dma-heaps rather than extending core dmabuf itself.</span></=
div><div><span style=3D""><br></span></div><div><span style=3D"">Cheers,</s=
pan></div><div><span style=3D"">Daniel=C2=A0</span></div></div></div>

--0000000000006b8c7805c0688c24--

--===============2475675597077026977==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

--===============2475675597077026977==--

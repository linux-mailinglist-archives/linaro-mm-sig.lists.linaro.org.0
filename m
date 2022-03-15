Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A4B4EAEBD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 15:49:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E71473EC15
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 13:49:05 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by lists.linaro.org (Postfix) with ESMTPS id 958C53ECA3
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Mar 2022 19:02:48 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id bg10so43612580ejb.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Mar 2022 12:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nYOjHF+WhaOll744zl3KXczQ6UnybRfVr7cW3I5uN/U=;
        b=eWq9aQSnpFSM7gGPtqgzIwr8bb/qKsDMvo0mIbS4s59AMIIHEMyCDMwhpLWRS+EYBR
         qN4oTEZNXWPjiFCM5wbN4L3FVB0yMfHlzKy9DLlhHVCdkUAg+H8m96o6+l6phOAtZZtL
         HqEaabMV1A231GA5THyiGjQn+CcdPV6Wcj7+UPW4PCAGWku/81HP+8C5q//5lWvhO0Pu
         3zeib+NRZoI9eWeTsoj34Li0T9JVhg3Z1kUYOR1XGxD8A2nRmcx8ve9PFlZCqJIC6N4E
         zEz1m0vSJoc3+NJsHrbvJr8ATMwQ+P3zv+QChYRQcRSYL4oNsBWZ06rrB2G0G0fVIJ1p
         NQSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nYOjHF+WhaOll744zl3KXczQ6UnybRfVr7cW3I5uN/U=;
        b=v5en4wbweNMCe/TEFuo5gdt5t0BMEQ9aKOAWPsASSM4tP1hPhZXxcL7gpf+0eeFtRx
         xCpUp0XWvASPiNF4ijSsOg8JRS/vpjOUwDPKT47oBkoCFmU9AITPDxSOMTgJUzFIelsG
         3i82LLYOZ2KLdEUfG1pye30GyjctCYIYfwZid4Xg/+6icx0endCSZrRULWq6AuIJ9WQp
         IiBsuUm7vK9ihUq7wp6Oy3c5fm49dKTrYqfajWxQGF93xJwy1fg+dhduCEpbdDXjR+5f
         wvgfu3O6GwjR1CQ+PzkgrqNO+fj8etiZnoT9BIWjox30VCjciUJIsaExLS0ydwTR1xBS
         paDw==
X-Gm-Message-State: AOAM5301pingFADNz9QSBh7hR/wa8s5cowW+5MHhHYawp8Ad0XxF/pM4
	6BYN2fmIF2dxOxo47FfmsFXaDjSsiqr388O7e5Er7w==
X-Google-Smtp-Source: ABdhPJxRVh2ZUD0Nbieh2mZpcZVRDFfmA10fIZydckRgsnzTb2ustxoM9NqZuPCgmtI1mueDRq1Ne12Wp4MutQ+KdLw=
X-Received: by 2002:a17:907:7f2a:b0:6d6:df12:7f57 with SMTP id
 qf42-20020a1709077f2a00b006d6df127f57mr23761361ejc.122.1647370967391; Tue, 15
 Mar 2022 12:02:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220309165222.2843651-1-tjmercier@google.com>
 <20220309165222.2843651-8-tjmercier@google.com> <CAHRSSEy5_h9LJB4q5_OJA7fSq=ROo68UaK+hdPz-Vj-wac1Qhg@mail.gmail.com>
 <CABdmKX1G0Rwmz7=BP1ER+TmtrnkGiE0nROsPTHKxnj=6bHhY3Q@mail.gmail.com> <a365a5f6c7864a879b133b99d1f43fb2@AcuMS.aculab.com>
In-Reply-To: <a365a5f6c7864a879b133b99d1f43fb2@AcuMS.aculab.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 15 Mar 2022 12:02:35 -0700
Message-ID: <CABdmKX3NEm8+pDBj2VG-r8E91CVHwQ+gGcKhG8D=5MgWcgincg@mail.gmail.com>
To: David Laight <David.Laight@aculab.com>
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OJTUAQIOWYTM35ZJHY6I3NLE5MVD5OE6
X-Message-ID-Hash: OJTUAQIOWYTM35ZJHY6I3NLE5MVD5OE6
X-Mailman-Approved-At: Tue, 29 Mar 2022 13:48:31 +0000
CC: Todd Kjos <tkjos@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Kalesh Singh
  <kaleshsingh@google.com>, "Kenny.Ho@amd.com" <Kenny.Ho@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "cgroups@vger.kernel.org" <cgroups@vger.kernel.org>, "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 7/8] binder: use __kernel_pid_t and __kernel_uid_t for userspace
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OJTUAQIOWYTM35ZJHY6I3NLE5MVD5OE6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 15, 2022 at 12:56 AM David Laight <David.Laight@aculab.com> wrote:
>
> From: T.J. Mercier
> > Sent: 14 March 2022 23:45
> >
> > On Thu, Mar 10, 2022 at 11:33 AM Todd Kjos <tkjos@google.com> wrote:
> > >
> > > On Wed, Mar 9, 2022 at 8:52 AM T.J. Mercier <tjmercier@google.com> wrote:
> > > >
> > > > The kernel interface should use types that the kernel defines instead of
> > > > pid_t and uid_t, whose definiton is owned by libc. This fixes the header
> > > > so that it can be included without first including sys/types.h.
> > > >
> > > > Signed-off-by: T.J. Mercier <tjmercier@google.com>
> > > > ---
> > > >  include/uapi/linux/android/binder.h | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/android/binder.h
> > > > index 169fd5069a1a..aa28454dbca3 100644
> > > > --- a/include/uapi/linux/android/binder.h
> > > > +++ b/include/uapi/linux/android/binder.h
> > > > @@ -289,8 +289,8 @@ struct binder_transaction_data {
> > > >
> > > >         /* General information about the transaction. */
> > > >         __u32           flags;
> > > > -       pid_t           sender_pid;
> > > > -       uid_t           sender_euid;
> > > > +       __kernel_pid_t  sender_pid;
> > > > +       __kernel_uid_t  sender_euid;
> > >
> > > Are we guaranteed that this does not affect the UAPI at all? Userspace
> > > code using this definition will have to run with kernels using the old
> > > definition and visa-versa.
> >
> > A standards compliant userspace should be expecting a signed integer
> > type here. So the only way I can think userspace would be affected is
> > if:
> > 1) pid_t is a long AND
> > 2) sizeof(long) > sizeof(int) AND
> > 3) Consumers of the pid_t definition actually attempt to mutate the
> > result to make use of extra bits in the variable (which are not there)
>
> Or the userspace headers have a 16bit pid_t.

Since the kernel uses an int for PIDs, wouldn't a 16 bit pid_t already
be potentially broken (overflow) on systems where int is not 16 bits?
On systems where int is 16 bits, there is no change here except to
achieve uniform use of __kernel_pid_t in the kernel headers and fix
the include problem.

>
> I can't help feeling that uapi headers should only use explicit
> fixed sized types.
> There is no point indirecting the type names - the sizes still
> can't be changes.

I think it's still unlikely to be an actual problem. For example there
are other occasions where a switch like this was made:
https://github.com/torvalds/linux/commit/694a58e29ef27c4c26f103a9decfd053f94dd34c
https://github.com/torvalds/linux/commit/269b8fd5d058f2c0da01a42b20315ffc2640d99b

And also since Binder's only known user is Android through Bionic
which already expects the type of pid_t to be __kernel_pid_t.


>
>         David
>
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

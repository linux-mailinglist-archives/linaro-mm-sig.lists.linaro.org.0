Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EAD4D95BC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Mar 2022 08:56:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 868F93EF98
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Mar 2022 07:56:33 +0000 (UTC)
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com [185.58.85.151])
	by lists.linaro.org (Postfix) with ESMTPS id EDDCE3ED42
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Mar 2022 07:56:30 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-216-xYBwVrWXPkuS3LcJVzhFpQ-1; Tue, 15 Mar 2022 07:56:28 +0000
X-MC-Unique: xYBwVrWXPkuS3LcJVzhFpQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.32; Tue, 15 Mar 2022 07:56:27 +0000
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.033; Tue, 15 Mar 2022 07:56:26 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: "'T.J. Mercier'" <tjmercier@google.com>, Todd Kjos <tkjos@google.com>
Thread-Topic: [RFC v3 7/8] binder: use __kernel_pid_t and __kernel_uid_t for
 userspace
Thread-Index: AQHYN/2hnJZ5hPm3HkKIFJirFaEIKazAEl4g
Date: Tue, 15 Mar 2022 07:56:26 +0000
Message-ID: <a365a5f6c7864a879b133b99d1f43fb2@AcuMS.aculab.com>
References: <20220309165222.2843651-1-tjmercier@google.com>
 <20220309165222.2843651-8-tjmercier@google.com>
 <CAHRSSEy5_h9LJB4q5_OJA7fSq=ROo68UaK+hdPz-Vj-wac1Qhg@mail.gmail.com>
 <CABdmKX1G0Rwmz7=BP1ER+TmtrnkGiE0nROsPTHKxnj=6bHhY3Q@mail.gmail.com>
In-Reply-To: <CABdmKX1G0Rwmz7=BP1ER+TmtrnkGiE0nROsPTHKxnj=6bHhY3Q@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Message-ID-Hash: LIXPZO5ETAFJWR66UQUOVCI5ET2KVG3E
X-Message-ID-Hash: LIXPZO5ETAFJWR66UQUOVCI5ET2KVG3E
X-MailFrom: david.laight@aculab.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?utf-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, =?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>, Kalesh Singh <kaleshsingh@google.com>,
  "Kenny.Ho@amd.com" <Kenny.Ho@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "cgroups@vger.kernel.org" <cgroups@vger.kernel.org>, "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v3 7/8] binder: use __kernel_pid_t and __kernel_uid_t for userspace
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LIXPZO5ETAFJWR66UQUOVCI5ET2KVG3E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: T.J. Mercier
> Sent: 14 March 2022 23:45
> 
> On Thu, Mar 10, 2022 at 11:33 AM Todd Kjos <tkjos@google.com> wrote:
> >
> > On Wed, Mar 9, 2022 at 8:52 AM T.J. Mercier <tjmercier@google.com> wrote:
> > >
> > > The kernel interface should use types that the kernel defines instead of
> > > pid_t and uid_t, whose definiton is owned by libc. This fixes the header
> > > so that it can be included without first including sys/types.h.
> > >
> > > Signed-off-by: T.J. Mercier <tjmercier@google.com>
> > > ---
> > >  include/uapi/linux/android/binder.h | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/android/binder.h
> > > index 169fd5069a1a..aa28454dbca3 100644
> > > --- a/include/uapi/linux/android/binder.h
> > > +++ b/include/uapi/linux/android/binder.h
> > > @@ -289,8 +289,8 @@ struct binder_transaction_data {
> > >
> > >         /* General information about the transaction. */
> > >         __u32           flags;
> > > -       pid_t           sender_pid;
> > > -       uid_t           sender_euid;
> > > +       __kernel_pid_t  sender_pid;
> > > +       __kernel_uid_t  sender_euid;
> >
> > Are we guaranteed that this does not affect the UAPI at all? Userspace
> > code using this definition will have to run with kernels using the old
> > definition and visa-versa.
> 
> A standards compliant userspace should be expecting a signed integer
> type here. So the only way I can think userspace would be affected is
> if:
> 1) pid_t is a long AND
> 2) sizeof(long) > sizeof(int) AND
> 3) Consumers of the pid_t definition actually attempt to mutate the
> result to make use of extra bits in the variable (which are not there)

Or the userspace headers have a 16bit pid_t.

I can't help feeling that uapi headers should only use explicit
fixed sized types.
There is no point indirecting the type names - the sizes still
can't be changes.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

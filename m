Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 504FE8BEE83
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 23:03:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6159C44897
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 21:03:27 +0000 (UTC)
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com [185.58.85.151])
	by lists.linaro.org (Postfix) with ESMTPS id 887EB4478A
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 21:03:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
	dmarc=pass (policy=none) header.from=aculab.com
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-48-bRehh-PWPia-pmBo6oqoQQ-1; Tue, 07 May 2024 22:03:13 +0100
X-MC-Unique: bRehh-PWPia-pmBo6oqoQQ-1
Received: from AcuMS.Aculab.com (10.202.163.4) by AcuMS.aculab.com
 (10.202.163.4) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Tue, 7 May
 2024 22:02:42 +0100
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Tue, 7 May 2024 22:02:42 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Christian Brauner' <brauner@kernel.org>, Linus Torvalds
	<torvalds@linux-foundation.org>
Thread-Topic: [PATCH] epoll: try to be a _bit_ better about file lifetimes
Thread-Index: AQHan5G+Cj1Mu87oOkmAjOj4WUTDELGMO/+w
Date: Tue, 7 May 2024 21:02:41 +0000
Message-ID: <052a735f433348b48a53b3d15183398a@AcuMS.aculab.com>
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
 <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wirxPSQgRV1u7t4qS1t4ED7w7OeehdUSC-LYZXspqa49w@mail.gmail.com>
 <20240505-gelehnt-anfahren-8250b487da2c@brauner>
 <CAHk-=wgMzzfPwKc=8yBdXwSkxoZMZroTCiLZTYESYD3BC_7rhQ@mail.gmail.com>
 <20240506-injizieren-administration-f5900157566a@brauner>
In-Reply-To: <20240506-injizieren-administration-f5900157566a@brauner>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 887EB4478A
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.59 / 15.00];
	BAYES_HAM(-2.99)[99.96%];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[aculab.com,none];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[185.58.85.151:from];
	R_SPF_ALLOW(-0.20)[+ip4:185.58.85.0/24];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[eu-smtp-delivery-151.mimecast.com:rdns,eu-smtp-delivery-151.mimecast.com:helo];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.963];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	HAS_XOIP(0.00)[];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:42427, ipnet:185.58.85.0/24, country:GB];
	RCPT_COUNT_TWELVE(0.00)[18];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: EUUP75DYU4L73SBWH4MM5ZSFER47PG6V
X-Message-ID-Hash: EUUP75DYU4L73SBWH4MM5ZSFER47PG6V
X-MailFrom: david.laight@aculab.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Al Viro <viro@zeniv.linux.org.uk>, "keescook@chromium.org" <keescook@chromium.org>, "axboe@kernel.dk" <axboe@kernel.dk>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "io-uring@vger.kernel.org" <io-uring@vger.kernel.org>, "jack@suse.cz" <jack@suse.cz>, "laura@labbott.name" <laura@labbott.name>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "minhquangbui99@gmail.com" <minhquangbui99@gmail.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com" <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, "syzkaller-bugs@googlegroups.com" <syzkaller-bugs@googlegroups.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EUUP75DYU4L73SBWH4MM5ZSFER47PG6V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Christian Brauner
> Sent: 06 May 2024 09:45
> 
> > The fact is, it's not dma-buf that is violating any rules. It's epoll.
> 
> I agree that epoll() not taking a reference on the file is at least
> unexpected and contradicts the usual code patterns for the sake of
> performance and that it very likely is the case that most callers of
> f_op->poll() don't know this.
> 
> Note, I cleary wrote upthread that I'm ok to do it like you suggested
> but raised two concerns a) there's currently only one instance of
> prolonged @file lifetime in f_op->poll() afaict and b) that there's
> possibly going to be some performance impact on epoll().
> 
> So it's at least worth discussing what's more important because epoll()
> is very widely used and it's not that we haven't favored performance
> before.
> 
> But you've already said that you aren't concerned with performance on
> epoll() upthread. So afaict then there's really not a lot more to
> discuss other than take the patch and see whether we get any complaints.

Surely there isn't a problem with epoll holding a reference to the file
structure - it isn't really any different to a dup().

'All' that needs to happen is that the 'magic' that makes epoll() remove
files on the last fput happen when the close is done.
I'm sure there are horrid locking issues it that code (separate from
it calling ->poll() after ->release()) eg if you call close() concurrently
with EPOLL_CTL_ADD.

I'm not at all sure it would have mattered if epoll kept the file open.
But it can't do that because it is documented not to.
As well as poll/select holding a reference to all their fd for the duration
of the system call, a successful mmap() holds a reference until the pages
are all unmapped - usually by process exit.

We (dayjob) have code that uses epoll() to monitor large numbers of UDP
sockets. I was doing some tests (trying to) receive RTP (audio) data
concurrently on 10000 sockets with typically one packet every 20ms.
There are 10000 associated RCTP sockets that are usually idle.
A more normal limit would be 1000 RTP sockets.
All the data needs to go into a single (multithreaded) process.
Just getting all the packets queued on the sockets was non-trivial.
epoll is about the only way to actually read the data.
(That needed multiple epoll fd so each thread could process all
the events from one epoll fd then look for another unprocessed fd.)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

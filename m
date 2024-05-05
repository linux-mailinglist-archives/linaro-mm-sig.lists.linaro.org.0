Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F038BC35E
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 22:02:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0BC11447FC
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 20:02:20 +0000 (UTC)
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com [185.58.85.151])
	by lists.linaro.org (Postfix) with ESMTPS id BC0DE40D75
	for <linaro-mm-sig@lists.linaro.org>; Sun,  5 May 2024 20:02:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
	dmarc=pass (policy=none) header.from=aculab.com
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-214-jGM-Qg1LN-mdByA-tf6CNA-1; Sun, 05 May 2024 21:02:07 +0100
X-MC-Unique: jGM-Qg1LN-mdByA-tf6CNA-1
Received: from AcuMS.Aculab.com (10.202.163.4) by AcuMS.aculab.com
 (10.202.163.4) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Sun, 5 May
 2024 21:01:32 +0100
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Sun, 5 May 2024 21:01:32 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Linus Torvalds' <torvalds@linux-foundation.org>
Thread-Topic: [PATCH v2] epoll: be better about file lifetimes
Thread-Index: AQHanxYFUxCiqg1u6ES4w5URbGMRFrGJB6+A
Date: Sun, 5 May 2024 20:01:32 +0000
Message-ID: <12120faf79614fc1b9df272394a71550@AcuMS.aculab.com>
References: <CAHk-=wgMzzfPwKc=8yBdXwSkxoZMZroTCiLZTYESYD3BC_7rhQ@mail.gmail.com>
 <20240505175556.1213266-2-torvalds@linux-foundation.org>
In-Reply-To: <20240505175556.1213266-2-torvalds@linux-foundation.org>
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
X-Rspamd-Queue-Id: BC0DE40D75
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.69 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.99)[99.95%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[aculab.com,none];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[185.58.85.151:from];
	R_SPF_ALLOW(-0.20)[+ip4:185.58.85.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,chromium.org,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com,zeniv.linux.org.uk];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:42427, ipnet:185.58.85.0/24, country:GB];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DNSWL_BLOCKED(0.00)[156.67.243.121:received,185.58.85.151:from];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	HAS_XOIP(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 5HHKCD5G72ONFEU2MKAMI52U3SOEN4FI
X-Message-ID-Hash: 5HHKCD5G72ONFEU2MKAMI52U3SOEN4FI
X-MailFrom: david.laight@aculab.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "axboe@kernel.dk" <axboe@kernel.dk>, "brauner@kernel.org" <brauner@kernel.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "io-uring@vger.kernel.org" <io-uring@vger.kernel.org>, "jack@suse.cz" <jack@suse.cz>, "keescook@chromium.org" <keescook@chromium.org>, "laura@labbott.name" <laura@labbott.name>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "minhquangbui99@gmail.com" <minhquangbui99@gmail.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com" <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, "syzkaller-bugs@googlegroups.com" <syzkaller-bugs@googlegroups.com>, "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] epoll: be better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5HHKCD5G72ONFEU2MKAMI52U3SOEN4FI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Linus Torvalds
> Sent: 05 May 2024 18:56
> 
> epoll can call out to vfs_poll() with a file pointer that may race with
> the last 'fput()'. That would make f_count go down to zero, and while
> the ep->mtx locking means that the resulting file pointer tear-down will
> be blocked until the poll returns, it means that f_count is already
> dead, and any use of it won't actually get a reference to the file any
> more: it's dead regardless.
> 
> Make sure we have a valid ref on the file pointer before we call down to
> vfs_poll() from the epoll routines.

How much is the extra pair of atomics going to hurt performance?
IIRC a lot of work was done to (try to) make epoll lockless.

Perhaps the 'hook' into epoll (usually) from sys_close should be
done before any of the references are removed?
(Which is different from Q6/A6 in man epoll - but that seems to be
documenting a bug!)
Then the ->poll() callback can't happen (assuming it is properly
locked) after the ->release() one.

It seems better to add extra atomics to the close/final-fput path
rather than ever ->poll() call epoll makes.

I can get extra references to a driver by dup() open("/dev/fd/n")
and mmap() - but epoll is definitely fd based.
(Which may be why it has the fd number in its data.)

Is there another race between EPOLL_CTL_ADD and close() (from a
different thread)?

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

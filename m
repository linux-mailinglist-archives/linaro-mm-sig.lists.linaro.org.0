Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A2D8BF900
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 10:48:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3696743FD7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 08:47:59 +0000 (UTC)
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
	by lists.linaro.org (Postfix) with ESMTPS id BE5C93F02C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 08:47:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
	dmarc=pass (policy=none) header.from=aculab.com
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-29-05uJX4YSMKKtp074SKxZbg-1; Wed, 08 May 2024 09:47:43 +0100
X-MC-Unique: 05uJX4YSMKKtp074SKxZbg-1
Received: from AcuMS.Aculab.com (10.202.163.6) by AcuMS.aculab.com
 (10.202.163.6) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Wed, 8 May
 2024 09:47:12 +0100
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Wed, 8 May 2024 09:47:12 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Linus Torvalds' <torvalds@linux-foundation.org>, Stefan Metzmacher
	<metze@samba.org>
Thread-Topic: get_file() unsafe under epoll (was Re: [syzbot] [fs?]
 [io-uring?] general protection fault in __ep_remove)
Thread-Index: AQHan+G0osQPVpGyjEu2UGFetalDzbGNBmXA
Date: Wed, 8 May 2024 08:47:12 +0000
Message-ID: <e9d29d433fde4ebba38830010597f642@AcuMS.aculab.com>
References: <0000000000002d631f0615918f1e@google.com>
 <7c41cf3c-2a71-4dbb-8f34-0337890906fc@gmail.com>
 <202405031110.6F47982593@keescook>
 <64b51cc5-9f5b-4160-83f2-6d62175418a2@kernel.dk>
 <202405031207.9D62DA4973@keescook>
 <d6285f19-01aa-49c8-8fef-4b5842136215@kernel.dk>
 <202405031237.B6B8379@keescook> <202405031325.B8979870B@keescook>
 <20240503211109.GX2118490@ZenIV>
 <CAHk-=wj0de-P2Q=Gz2uyrWBHagT25arLbN0Lyg=U6fT7psKnQA@mail.gmail.com>
 <501ead34-d79f-442e-9b9a-ecd694b3015c@samba.org>
 <CAHk-=whBVkwFryz5-DOAxNKYOy5RwPpQkZHQSs1Oe806Xo6yeg@mail.gmail.com>
In-Reply-To: <CAHk-=whBVkwFryz5-DOAxNKYOy5RwPpQkZHQSs1Oe806Xo6yeg@mail.gmail.com>
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
X-Rspamd-Queue-Id: BE5C93F02C
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.63 / 15.00];
	BAYES_HAM(-2.03)[95.20%];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[aculab.com,none];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[185.58.86.151:from];
	R_SPF_ALLOW(-0.20)[+ip4:185.58.86.0/24];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,chromium.org,kernel.dk,gmail.com,kernel.org,syzkaller.appspotmail.com,vger.kernel.org,suse.cz,googlegroups.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org,labbott.name];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.904];
	HAS_XOIP(0.00)[];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:42427, ipnet:185.58.86.0/24, country:GB];
	TO_DN_SOME(0.00)[];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: CPA7RVZJQX5GVGBHNCSDJTPKC4SO4CNK
X-Message-ID-Hash: CPA7RVZJQX5GVGBHNCSDJTPKC4SO4CNK
X-MailFrom: david.laight@aculab.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Al Viro <viro@zeniv.linux.org.uk>, Kees Cook <keescook@chromium.org>, Jens Axboe <axboe@kernel.dk>, Bui Quang Minh <minhquangbui99@gmail.com>, Christian Brauner <brauner@kernel.org>, syzbot <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, "io-uring@vger.kernel.org" <io-uring@vger.kernel.org>, "jack@suse.cz" <jack@suse.cz>, "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "syzkaller-bugs@googlegroups.com" <syzkaller-bugs@googlegroups.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, Laura Abbott <laura@labbott.name>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: get_file() unsafe under epoll (was Re: [syzbot] [fs?] [io-uring?] general protection fault in __ep_remove)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CPA7RVZJQX5GVGBHNCSDJTPKC4SO4CNK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Linus Torvalds
> Sent: 06 May 2024 19:18
...
> Which is why I applied the minimal patch for just "refcount over
> vfs_poll()", and am just mentioning my suggestion in the hope that
> some eager beaver would like to see how painful it would do to make
> the bigger surgery...

I wonder if I can work out how it (doesn't) currently work...

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

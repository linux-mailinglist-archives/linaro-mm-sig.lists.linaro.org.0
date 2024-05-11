Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F33DC8C331F
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 May 2024 20:25:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A0E2D440E1
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 May 2024 18:25:48 +0000 (UTC)
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
	by lists.linaro.org (Postfix) with ESMTPS id 94CAF3F30D
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 May 2024 18:25:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
	dmarc=pass (policy=none) header.from=aculab.com
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-7-hlD-hTv5PSKv4xd1znQCwQ-1; Sat, 11 May 2024 19:25:35 +0100
X-MC-Unique: hlD-hTv5PSKv4xd1znQCwQ-1
Received: from AcuMS.Aculab.com (10.202.163.4) by AcuMS.aculab.com
 (10.202.163.4) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Sat, 11 May
 2024 19:25:02 +0100
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Sat, 11 May 2024 19:25:02 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Christian Brauner' <brauner@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Thread-Topic: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better
 about file lifetimes
Thread-Index: AQHaosiO/bmWtIycWUWbxqLWgzPstbGSV1Yw
Date: Sat, 11 May 2024 18:25:02 +0000
Message-ID: <b3e869996b554b57bf59a66cc10ac810@AcuMS.aculab.com>
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
 <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
 <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com>
 <20240508-risse-fehlpass-895202f594fd@brauner>
 <ZjueITUy0K8TP1WO@phenom.ffwll.local>
 <20240510-duzen-uhrmacher-141c9331f1bf@brauner>
In-Reply-To: <20240510-duzen-uhrmacher-141c9331f1bf@brauner>
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
X-Rspamd-Queue-Id: 94CAF3F30D
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[aculab.com,none];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[185.58.86.151:from];
	R_SPF_ALLOW(-0.20)[+ip4:185.58.86.0/24];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	RCVD_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:42427, ipnet:185.58.86.0/24, country:GB];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	HAS_XOIP(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: J3ASGCM3KZ5ZKE7SOOXJSMFGMH2LOK2E
X-Message-ID-Hash: J3ASGCM3KZ5ZKE7SOOXJSMFGMH2LOK2E
X-MailFrom: david.laight@aculab.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Linus Torvalds <torvalds@linux-foundation.org>, Al Viro <viro@zeniv.linux.org.uk>, "keescook@chromium.org" <keescook@chromium.org>, "axboe@kernel.dk" <axboe@kernel.dk>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "io-uring@vger.kernel.org" <io-uring@vger.kernel.org>, "jack@suse.cz" <jack@suse.cz>, "laura@labbott.name" <laura@labbott.name>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "minhquangbui99@gmail.com" <minhquangbui99@gmail.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com" <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, "syzkaller-bugs@googlegroups.com" <syzkaller-bugs@googlegroups.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J3ASGCM3KZ5ZKE7SOOXJSMFGMH2LOK2E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Christian Brauner
> Sent: 10 May 2024 11:55
> 
> > For the uapi issue you describe below my take would be that we should just
> > try, and hope that everyone's been dutifully using O_CLOEXEC. But maybe
> > I'm biased from the gpu world, where we've been hammering it in that
> > "O_CLOEXEC or bust" mantra since well over a decade. Really the only valid
> 
> Oh, we're very much on the same page. All new file descriptor types that
> I've added over the years are O_CLOEXEC by default. IOW, you need to
> remove O_CLOEXEC explicitly (see pidfd as an example). And imho, any new
> fd type that's added should just be O_CLOEXEC by default.

For fd a shell redirect creates you may want so be able to say
'this fd will have O_CLOEXEC set after the next exec'.
Also (possibly) a flag that can't be cleared once set and that
gets kept by dup() etc.
But maybe that is excessive?

I've certainly used:
# ip netns exec ns command 3</sys/class/net
in order to be able to (easily) read status for interfaces in the
default namespace and a specific namespace.
The would be hard if the O_CLOEXEC flag had got set by default.
(Especially without a shell builtin to clear it.)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

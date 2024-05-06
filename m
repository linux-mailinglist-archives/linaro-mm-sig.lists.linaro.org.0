Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 112EF8BCDC1
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 14:24:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1BDAD44788
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 12:24:04 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by lists.linaro.org (Postfix) with ESMTPS id 8BBFA40074
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 May 2024 12:23:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Lcc3K6lD;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.221.47) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-346407b8c9aso622269f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 May 2024 05:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1714998231; x=1715603031; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hJvxbNUxeULloPkLJE9SsjERpdsUIXxRxn2yKsRsSwc=;
        b=Lcc3K6lDMzgLBwFY2/6smbT94frkDLbmJBA2a7CywBnCJFLEemfsluSXLReFy13isu
         Tmam47OpHXIao8LgGXW/gTNeY7y717DjHvHYg3+YwT4PCnIlB87X8rfrd5j4Za9M1D2x
         M4WNwaAedeAJTBv28/E9i6znZ5aMjW6QrMU6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714998231; x=1715603031;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hJvxbNUxeULloPkLJE9SsjERpdsUIXxRxn2yKsRsSwc=;
        b=Ylak75RzUtWo8mJcNisjNwmn6ReaERTB9PTFa1GZzJdWWFLfjZa6yD+LsljurM5/vR
         AaVTleR1YP4OyAPEFX35pOIE3dsZ93f9jldthaiwwFUHhvlZ2nKF4zZOsSVvFdswk9qK
         svC6g3/LWaMdnhzlYqQiJKhSyhICZYd6fOPHXnmEYDYqP5OMFur4jS7zeD4wAk7LeHSe
         n7BGlz4f8t1xHDdmxuCs7obi4ycZhG4q8m8Q1tTZXzAPHOfCIgOgmOZcuWagrM3n+0Wb
         gwDo5sdrvpbrMg8x0zAR/TFrlXfBOVCXpxfodeOxzjReFIJP7yEN4aagYRy46vpYyapS
         8uBw==
X-Forwarded-Encrypted: i=1; AJvYcCVTeCSN1igGe87JDcZ/44ObBhT7hJd8PKBkS0aa+s4tyS1XQW1Y/uPbrJ9JonOQ8eMPLWtCo/I6rkmDzxHAAUXzZvA6sbXs74Y/RoNkfes=
X-Gm-Message-State: AOJu0YyuJiziLze+PSsIacdyJs2nmXyTHx6BP+A05UKnCJWsxPM7xPtg
	ja5/tiVWifER9qa4A/7GtEaRZAjbIX0tK7HyRKJPZn00ygXiyB8KGcKzCupvTuU=
X-Google-Smtp-Source: AGHT+IGuUvBtI5rIVLpD2XOZICwCS9IQtrXwLWSsF2oFAMcsXQKy2Upppe1zQ4rIa9wWPmT5P5GIew==
X-Received: by 2002:a05:600c:3b02:b0:41a:c4fe:b0a5 with SMTP id m2-20020a05600c3b0200b0041ac4feb0a5mr6970105wms.4.1714998231468;
        Mon, 06 May 2024 05:23:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id n17-20020a05600c4f9100b0041668162b45sm19554882wmq.26.2024.05.06.05.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 05:23:50 -0700 (PDT)
Date: Mon, 6 May 2024 14:23:48 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <ZjjL1GjSMMMcxdsc@phenom.ffwll.local>
Mail-Followup-To: Al Viro <viro@zeniv.linux.org.uk>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>, Jens Axboe <axboe@kernel.dk>,
	Bui Quang Minh <minhquangbui99@gmail.com>,
	Christian Brauner <brauner@kernel.org>,
	syzbot <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>,
	io-uring@vger.kernel.org, jack@suse.cz,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	syzkaller-bugs@googlegroups.com,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, Laura Abbott <laura@labbott.name>
References: <202405031110.6F47982593@keescook>
 <64b51cc5-9f5b-4160-83f2-6d62175418a2@kernel.dk>
 <202405031207.9D62DA4973@keescook>
 <d6285f19-01aa-49c8-8fef-4b5842136215@kernel.dk>
 <202405031237.B6B8379@keescook>
 <202405031325.B8979870B@keescook>
 <20240503211109.GX2118490@ZenIV>
 <20240503213625.GA2118490@ZenIV>
 <CAHk-=wgRphONC5NBagypZpgriCUtztU7LCC9BzGZDEjWQbSVWQ@mail.gmail.com>
 <20240503215303.GC2118490@ZenIV>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240503215303.GC2118490@ZenIV>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8BBFA40074
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[linux.org.uk:email,ffwll.ch:url,ffwll.ch:dkim];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[linux-foundation.org,chromium.org,kernel.dk,gmail.com,kernel.org,syzkaller.appspotmail.com,vger.kernel.org,suse.cz,googlegroups.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org,labbott.name];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.47:from];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 5ZN2XMSLTYHNXNBQK7SYAQI34XZCURY6
X-Message-ID-Hash: 5ZN2XMSLTYHNXNBQK7SYAQI34XZCURY6
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linus Torvalds <torvalds@linux-foundation.org>, Kees Cook <keescook@chromium.org>, Jens Axboe <axboe@kernel.dk>, Bui Quang Minh <minhquangbui99@gmail.com>, Christian Brauner <brauner@kernel.org>, syzbot <syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com>, io-uring@vger.kernel.org, jack@suse.cz, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Laura Abbott <laura@labbott.name>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: get_file() unsafe under epoll (was Re: [syzbot] [fs?] [io-uring?] general protection fault in __ep_remove)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5ZN2XMSLTYHNXNBQK7SYAQI34XZCURY6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 03, 2024 at 10:53:03PM +0100, Al Viro wrote:
> On Fri, May 03, 2024 at 02:42:22PM -0700, Linus Torvalds wrote:
> > On Fri, 3 May 2024 at 14:36, Al Viro <viro@zeniv.linux.org.uk> wrote:
> > >
> > > ... the last part is no-go - poll_wait() must be able to grab a reference
> > > (well, the callback in it must)
> > 
> > Yeah. I really think that *poll* itself is doing everything right. It
> > knows that it's called with a file pointer with a reference, and it
> > adds its own references as needed.
> 
> Not really.  Note that select's __pollwait() does *NOT* leave a reference
> at the mercy of driver - it's stuck into poll_table_entry->filp and
> the poll_freewait() knows how to take those out.
> 
> 
> dmabuf does something very different - it grabs the damn thing into
> its private data structures and for all we know it could keep it for
> a few hours, until some even materializes.

dma_fence must complete in reasonable amount of time, where "reasonable"
is roughly in line with other i/o (including the option that there's
timeouts if the hw's gone busted).

So definitely not hours (aside from driver bugs when things go really
wrong ofc), but more like a few seconds in a worst case scenario.
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

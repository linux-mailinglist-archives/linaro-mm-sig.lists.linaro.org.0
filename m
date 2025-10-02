Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 427A9BB4B09
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Oct 2025 19:28:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4423B45E7E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Oct 2025 17:27:58 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by lists.linaro.org (Postfix) with ESMTPS id 99AAF4412B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Oct 2025 17:27:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=E6LEI2YE;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of boqun.feng@gmail.com designates 209.85.222.177 as permitted sender) smtp.mailfrom=boqun.feng@gmail.com
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-8572d7b2457so150973685a.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Oct 2025 10:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759426075; x=1760030875; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:feedback-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qTM0UQL/8j7dglCka3v9L9QTEMlq52c4L0JAQ1Z24Bs=;
        b=E6LEI2YEkn5OuUrQR2ea9vqM/oRNzq56utEdqHk/01fTfZPGeBVxbwx2EB/sbgkG9W
         AA7qPO3KZ4Hxy1cx9tH+K6WGIR9KXc9QIZGVGLjdRUdHFV1GeAOuZ2gDD4Wu933bj/T7
         n6zNdnxPgnN4zBU1gEOx0mBuwQTzp/woVy++hYGU7hIS54oTIS7+2PxA30uRCyXvnS0g
         Uy/gb+hGoDs2I7ME/jsKZwC5b1z5IIxWUiZ+SX2TDMvBmCNMpnHLmbQfYrfoJId/1D0F
         xqPeuZECwQDx71mMH2xkSDcymyD+wNtZWgKnMWMZqq6RTNARflJFBMtyUVtfUfOWMvG4
         xU5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759426075; x=1760030875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:feedback-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qTM0UQL/8j7dglCka3v9L9QTEMlq52c4L0JAQ1Z24Bs=;
        b=g65YC7tU3/vZLSRwypGXDZeRhzGwZKmoWkuuh9jHHwLfDpzkNtP66z68+n1dZU6moo
         wm+lPLtyPWPrdSCqMHYnPdtk952JsqzZbf36J/QTseLpwyaYSu2zIhEzcZveFd2IDcsM
         4cbBpYKCr2ronjJbYGcuQnYxy7ETrOkGsxwYBvJYq/93dA9hfger2c9r75r1ur9SjpbC
         iD+RQpGEAAe0G+iRY+7n0Wb1+/mDQzbxebQuiQqufwIoy0GFanrRgNGzsuEbeU2mJnwR
         MKxbUduz5tAiSEyGVw8WIxvxOdZYCuzYicf1ZUt9Awyraz4POPn88aD5LHjYLyVrpN2r
         F2UQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZzf8lAmG+2w+OYW1jv4e/oW8O+TccmLhwKazV3HEyEESVc3jHTL67iuOtaz2q5CFSHO6Vzvh3A8YS5NZl@lists.linaro.org
X-Gm-Message-State: AOJu0YwSxg4XZ/QL8URFv6DJwheRQ7irKs22p+A9yYPnPBYx1Xyg/Xhb
	iSghkC1GB4FM5oEKvA+ezeYhVXTJWfl6doPmzQEHUwU6J4ZE9uBKoKxv
X-Gm-Gg: ASbGnct3080U0rx+YDzQnj3bS9itXvXUVXQRgipXSxxjo9c0q2L3QS6cSid2nSfp++H
	yH87Zdp6YY5Z0tNpDPTJJBU+LKhI2EJk4mMrObFAhoeZ+YeQtkdWfvmgnOLNFLXUj9WhW7y7oN2
	pQqFmKcu2s0NfS20dFjvnxUQ2JhFwYhbuyC1iPdi+CYcxuqTqhcOxBHqgoPBmtNnSS0teOgjdDS
	BkiwhUBSCiUqkk/D4P2Sq1wG3fjNJDRwMe2YTbtRmTurBEXFykczwcsBVlgx08QHnln6ka9cF/b
	s5qDSzaZhwieuPA1wdWhkVVaOP48AYzX0brxLGO7UfwGlNSswPmdlYH9ijAbAQhBw5X6nbaoPnV
	RT+OA0H5a4cXrTBBxKOrSAznJBHT7Ta946pFUxeXzJ4+anTE0Zt8/wbRIfRrEV4XLMueCuVoGbo
	H7I6FQwvm7o3Tu+H+LMFjt2ll+xRE2cHD3wxNN9tdfpa1BeOs=
X-Google-Smtp-Source: AGHT+IEccWf95m9em/uI+dQlqBiU53wpoCpSc5+xQyyCCz3DNyftc7RYyrlZ2VQKH150B9/39RYCLg==
X-Received: by 2002:a05:620a:4542:b0:80b:bb34:371c with SMTP id af79cd13be357-87765c0283amr556367685a.4.1759426074903;
        Thu, 02 Oct 2025 10:27:54 -0700 (PDT)
Received: from fauth-a1-smtp.messagingengine.com (fauth-a1-smtp.messagingengine.com. [103.168.172.200])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-87771129f10sm250580785a.9.2025.10.02.10.27.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 10:27:54 -0700 (PDT)
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
	by mailfauth.phl.internal (Postfix) with ESMTP id 64F31F40069;
	Thu,  2 Oct 2025 13:27:53 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-11.internal (MEProxy); Thu, 02 Oct 2025 13:27:53 -0400
X-ME-Sender: <xms:GbbeaA47QkWtwwPWv6vtzqHqLGFsZJYXwawRT5GZ7ove-YTVfKveog>
    <xme:GbbeaLRKare3YFvYQ8IM-3q6zMpvcmvJN3fBupwOyYuvxHTzciEIpTEH6HTjCtMJz
    Ui03Aoj6wC_x9XxdjVLoZXrwD3h3lyNY_1pwER6F99ybfMZqbhZ>
X-ME-Received: <xmr:GbbeaIkFcpyNXJiJ2YkRCL5cDJkQz13nP_ZUKR3iXf7c09R20thn7hUns-BrtUcx7vb5zVggjK5D7CpuHdVyLFtfmFh1oXW9>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdekieeiudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
    dtvdenucfhrhhomhepuehoqhhunhcuhfgvnhhguceosghoqhhunhdrfhgvnhhgsehgmhgr
    ihhlrdgtohhmqeenucggtffrrghtthgvrhhnpeehudfgudffffetuedtvdehueevledvhf
    elleeivedtgeeuhfegueevieduffeivdenucevlhhushhtvghrufhiiigvpedtnecurfgr
    rhgrmhepmhgrihhlfhhrohhmpegsohhquhhnodhmvghsmhhtphgruhhthhhpvghrshhonh
    grlhhithihqdeiledvgeehtdeigedqudejjeekheehhedvqdgsohhquhhnrdhfvghnghep
    pehgmhgrihhlrdgtohhmsehfihigmhgvrdhnrghmvgdpnhgspghrtghpthhtohepgedupd
    hmohguvgepshhmthhpohhuthdprhgtphhtthhopedvgedtjedtudekfeejudesqhhqrdgt
    ohhmpdhrtghpthhtohepsgihuhhnghgthhhulhesshhkrdgtohhmpdhrtghpthhtoheplh
    hirghmrdhhohiflhgvthhtsehorhgrtghlvgdrtghomhdprhgtphhtthhopegrmhhirhej
    fehilhesghhmrghilhdrtghomhdprhgtphhtthhopegrnhguihdrshhhhihtiheskhgvrh
    hnvghlrdhorhhgpdhrtghpthhtoheprghnughrihhisehkvghrnhgvlhdrohhrghdprhgt
    phhtthhopegsshgvghgrlhhlsehgohhoghhlvgdrtghomhdprhgtphhtthhopehgrhgvgh
    hkhheslhhinhhugihfohhunhgurghtihhonhdrohhrghdprhgtphhtthhopehlihhnrghr
    ohdqmhhmqdhsihhgsehlihhsthhsrdhlihhnrghrohdrohhrgh
X-ME-Proxy: <xmx:GbbeaIKfrjD-eqlOsaEu8oupAwCNL5B3v_jSdUHcY24JYHPWjN5_tQ>
    <xmx:GbbeaOSZC2NlhdVwmqKBdbD4NIwKEaTDKckNg4nutrEqyq1jJ65JtQ>
    <xmx:GbbeaPMPlfhxRayyy1Im8WpdH8DW6D_tTVsqfNIfnjn98KI1eVpWSA>
    <xmx:GbbeaPaxaAKzS_UqYZsc_slWPxKZim7zmb4NsaNtun6TSMRkIYCuOw>
    <xmx:GbbeaDDpRUzAmACJHoEs-WQm9-qedNFlV-mfcoTZk1unrpqOZiNLvsDC>
Feedback-ID: iad51458e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 2 Oct 2025 13:27:52 -0400 (EDT)
Date: Thu, 2 Oct 2025 10:27:51 -0700
From: Boqun Feng <boqun.feng@gmail.com>
To: Guangbo Cui <2407018371@qq.com>
Message-ID: <aN62F8t493R7UmCT@tardis.local>
References: <20251002081247.51255-37-byungchul@sk.com>
 <tencent_13F1EDE0D6B7A44697F31AE274C8E664E908@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_13F1EDE0D6B7A44697F31AE274C8E664E908@qq.com>
X-Rspamd-Queue-Id: 99AAF4412B
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[mail-qk1-f177.google.com:rdns,mail-qk1-f177.google.com:helo,tardis.local:mid];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[qq.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[40];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[sk.com,oracle.com,gmail.com,kernel.org,google.com,linuxfoundation.org,lists.linaro.org,vivo.com,vger.kernel.org,arm.com,efficios.com,intel.com,suse.de,redhat.com,infradead.org,suse.com,linux-foundation.org,linaro.org,kzalloc.com,garyguo.net,protonmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[103.168.172.200:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.177:from];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.222.177:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ZSF53S6B5P7ICFAMKXE7RM3DN4S6SITC
X-Message-ID-Hash: ZSF53S6B5P7ICFAMKXE7RM3DN4S6SITC
X-MailFrom: boqun.feng@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: byungchul@sk.com, Liam.Howlett@oracle.com, amir73il@gmail.com, andi.shyti@kernel.org, andrii@kernel.org, bsegall@google.com, gregkh@linuxfoundation.org, linaro-mm-sig@lists.linaro.org, link@vivo.com, linux-kernel@vger.kernel.org, mark.rutland@arm.com, masahiroy@kernel.org, mathieu.desnoyers@efficios.com, matthew.brost@intel.com, max.byungchul.park@gmail.com, mcgrof@kernel.org, melissa.srw@gmail.com, mgorman@suse.de, mhocko@kernel.org, minchan@kernel.org, oleg@redhat.com, paulmck@kernel.org, penberg@kernel.org, peterz@infradead.org, petr.pavlu@suse.com, torvalds@linux-foundation.org, vincent.guittot@linaro.org, will@kernel.org, yeoreum.yun@arm.com, ysk@kzalloc.com, rust-for-linux@vger.kernel.org, ojeda@kernel.org, gary@garyguo.net, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, dakr@kernel.org, alex.gaynor@gmail.com, bjorn3_gh@protonmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] rust: bindings: add `rust_helper_wait_for_completion` helper function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZSF53S6B5P7ICFAMKXE7RM3DN4S6SITC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Oct 02, 2025 at 10:06:17AM +0000, Guangbo Cui wrote:
> > -extern void wait_for_completion(struct completion *);
> > -extern void wait_for_completion_io(struct completion *);
> > -extern int wait_for_completion_interruptible(struct completion *x);
> > -extern int wait_for_completion_killable(struct completion *x);
> > -extern int wait_for_completion_state(struct completion *x, unsigned int state);
> > -extern unsigned long wait_for_completion_timeout(struct completion *x,
> > +extern void __wait_for_completion(struct completion *);
> > +extern void __wait_for_completion_io(struct completion *);
> > +extern int __wait_for_completion_interruptible(struct completion *x);
> > +extern int __wait_for_completion_killable(struct completion *x);
> > +extern int __wait_for_completion_state(struct completion *x, unsigned int state);
> > +extern unsigned long __wait_for_completion_timeout(struct completion *x,
> >  						   unsigned long timeout);
> > -extern unsigned long wait_for_completion_io_timeout(struct completion *x,
> > +extern unsigned long __wait_for_completion_io_timeout(struct completion *x,
> >  						    unsigned long timeout);
> > -extern long wait_for_completion_interruptible_timeout(
> > +extern long __wait_for_completion_interruptible_timeout(
> >  	struct completion *x, unsigned long timeout);
> > -extern long wait_for_completion_killable_timeout(
> > +extern long __wait_for_completion_killable_timeout(
> >  	struct completion *x, unsigned long timeout);
> >  extern bool try_wait_for_completion(struct completion *x);
> >  extern bool completion_done(struct completion *x);
> > @@ -139,4 +134,79 @@ extern void complete(struct completion *);
> >  extern void complete_on_current_cpu(struct completion *x);
> >  extern void complete_all(struct completion *);
> >  
> > +#define wait_for_completion(x)						\
> > +({									\
> > +	sdt_might_sleep_start_timeout(NULL, -1L);			\
> > +	__wait_for_completion(x);					\
> > +	sdt_might_sleep_end();						\
> > +})
> 
> The DEPT patch series changed `wait_for_completion` into a macro.
> Because bindgen cannot handle function-like macros, this caused
> Rust build errors. Add a helper function to fix it.
> 
> ```
> error[E0425]: cannot find function `wait_for_completion` in crate `bindings`
>      --> rust/kernel/sync/completion.rs:110:28
>       |
>   110 |         unsafe { bindings::wait_for_completion(self.as_raw()) };
>       |                            ^^^^^^^^^^^^^^^^^^^ help: a function with a similar name exists: `__wait_for_completion`
>       |
>      ::: /root/linux/rust/bindings/bindings_generated.rs:33440:5
>       |
> 33440 |     pub fn __wait_for_completion(arg1: *mut completion);
>       |     ---------------------------------------------------- similarly named function `__wait_for_completion` defined here
> 
> error: aborting due to 1 previous error
> 
> For more information about this error, try `rustc --explain E0425`.
> ```
> 

I think Danilo already made it clear, please fold this the existing
patch. Moreover, since this patchset doesn't adjust init_completion()
from the Rust side, the result is Rust code will also use the same dept
key for completion, which has to be fixed if dept wants to be in-tree.

Regards,
Boqun

> Signed-off-by: Guangbo Cui <2407018371@qq.com>
> ---
>  rust/helpers/completion.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/rust/helpers/completion.c b/rust/helpers/completion.c
> index b2443262a2ae..5bae5e749def 100644
> --- a/rust/helpers/completion.c
> +++ b/rust/helpers/completion.c
> @@ -6,3 +6,8 @@ void rust_helper_init_completion(struct completion *x)
>  {
>  	init_completion(x);
>  }
> +
> +void rust_helper_wait_for_completion(struct completion *x)
> +{
> +	wait_for_completion(x);
> +}
> -- 
> 2.43.0
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

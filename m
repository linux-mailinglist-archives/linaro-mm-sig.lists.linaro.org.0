Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D048BB829
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 01:23:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC75D447B1
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:23:45 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by lists.linaro.org (Postfix) with ESMTPS id 022D23F06F
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 23:23:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=aaXTVRvM;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.214.179 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1eab16dcfd8so1570645ad.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 16:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714778614; x=1715383414; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VUA37CihXVg7mm5FxSpz/CzjnHfbPR2trIEY0fDnh+Q=;
        b=aaXTVRvM0pB7OwxmP26o/nXK770mI9dVCtRObAAM7nEVTqpD99zON6WnH1wtqIXJar
         fqcpfgFZL+b1OoAMT5dMSklaMX2LrR/++HwoH7zFe9r4Yvk1xrhF7SjtvV7EWflTuhwj
         m70jdd4rqEozEq2NdBcJIfpQkKfcCF90Hgoew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714778614; x=1715383414;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VUA37CihXVg7mm5FxSpz/CzjnHfbPR2trIEY0fDnh+Q=;
        b=bg83ht88FA3Rs4ns0dcEAkvIimu3AQ1Qh6T7qStdhA42ez0PYY6oMmXp168kc3SEQp
         W4CdPOg+9o5EcR//sm3Q0reGq43i85Zi59WkZfBqb6jd+/4Sk3I5RbwnDNYhplgHBN+B
         A/1e8OZaySDyvSXTWmhLFN5pXR6YNDS1j0avxHAow5ptI5yh8QdW7fVK8BdNYIazC5HI
         mqe/l27lzqoD0/1urpFzRw/sk6gnXuZ0YUCg68jHlTen6iidFWlLX/ycHqMMqJoBKYeA
         67P/RuWyT8JNH5yya02NeNXGZ+dBUCvvaqgbS0YO4v+KnjKQQ0DjDmRnZhe5Uy8iiLK/
         POfg==
X-Forwarded-Encrypted: i=1; AJvYcCVkBlP7Hdw/UPv/Drf9U4H4IjtGgPhvxmHqutg+iZ3kPsLzSOXDBEf53AWzH9vJj0COTeE3Nr0AkCy2nCJWrT5wPKT3vosQuIdb7Nrz77M=
X-Gm-Message-State: AOJu0Yz9uXGCJOSBJwEjayKDIHPg9S+tR/bPs8557b0Ax0+iyMWOZMo7
	yyiN4yU9CRQIjPC9dgh+IG1c3fkx6zSluDS46qu/eo1HJ2f7hCvyUL4kXZpRsA==
X-Google-Smtp-Source: AGHT+IGYEU76uRUVHu3t+p2cOz6G2yu0aNydyl6VPEopXdNsv2Uoe1Hs5RLUXZ183qrKjCrJ/IlslQ==
X-Received: by 2002:a17:903:1c2:b0:1e4:6243:8543 with SMTP id e2-20020a17090301c200b001e462438543mr4608970plh.5.1714778614174;
        Fri, 03 May 2024 16:23:34 -0700 (PDT)
Received: from www.outflux.net ([198.0.35.241])
        by smtp.gmail.com with ESMTPSA id b11-20020a170902d50b00b001eb2f4648d3sm3793511plg.228.2024.05.03.16.23.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 16:23:33 -0700 (PDT)
Date: Fri, 3 May 2024 16:23:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <202405031616.793DF7EEE@keescook>
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240503214531.GB2118490@ZenIV>
 <CAHk-=wgC+QpveKCJpeqsaORu7htoNNKA8mp+d9mvJEXmSKjhbw@mail.gmail.com>
 <202405031529.2CD1BFED37@keescook>
 <20240503230318.GF2118490@ZenIV>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240503230318.GF2118490@ZenIV>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 022D23F06F
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.10 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.179:from];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux-foundation.org,kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	DNSWL_BLOCKED(0.00)[209.85.214.179:from];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 7TL77ARHYGGTZM7FPEGFA463AF653RVF
X-Message-ID-Hash: 7TL77ARHYGGTZM7FPEGFA463AF653RVF
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Linus Torvalds <torvalds@linux-foundation.org>, axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7TL77ARHYGGTZM7FPEGFA463AF653RVF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, May 04, 2024 at 12:03:18AM +0100, Al Viro wrote:
> On Fri, May 03, 2024 at 03:46:25PM -0700, Kees Cook wrote:
> > On Fri, May 03, 2024 at 02:52:38PM -0700, Linus Torvalds wrote:
> > > That means that the file will be released - and it means that you have
> > > violated all the refcounting rules for poll().
> > 
> > I feel like I've been looking at this too long. I think I see another
> > problem here, but with dmabuf even when epoll is fixed:
> > 
> > dma_buf_poll()
> > 	get_file(dmabuf->file)		/* f_count + 1 */
> > 	dma_buf_poll_add_cb()
> > 		dma_resv_for_each_fence ...
> > 			dma_fence_add_callback(fence, ..., dma_buf_poll_cb)
> > 
> > dma_buf_poll_cb()
> > 	...
> >         fput(dmabuf->file);		/* f_count - 1 ... for each fence */
> > 
> > Isn't it possible to call dma_buf_poll_cb() (and therefore fput())
> > multiple times if there is more than 1 fence? Perhaps I've missed a
> > place where a single struct dma_resv will only ever signal 1 fence? But
> > looking through dma_fence_signal_timestamp_locked(), I don't see
> > anything about resv nor somehow looking into other fence cb_list
> > contents...
> 
> At a guess,
>                 r = dma_fence_add_callback(fence, &dcb->cb, dma_buf_poll_cb);
> 		if (!r)
> 			return true;
> 
> prevents that - it returns 0 on success and -E... on error;
> insertion into the list happens only when it's returning 0,
> so...

Yes; thank you. I *have* been looking at it all too long. :)


The last related thing is the drivers/gpu/drm/vmwgfx/ttm_object.c case:

/**
 * get_dma_buf_unless_doomed - get a dma_buf reference if possible.
 *
 * @dmabuf: Non-refcounted pointer to a struct dma-buf.
 *
 * Obtain a file reference from a lookup structure that doesn't refcount
 * the file, but synchronizes with its release method to make sure it
 * has
 * not been freed yet. See for example kref_get_unless_zero
 * documentation.
 * Returns true if refcounting succeeds, false otherwise.
 *
 * Nobody really wants this as a public API yet, so let it mature here
 * for some time...
 */
static bool __must_check get_dma_buf_unless_doomed(struct dma_buf *dmabuf)
{
        return atomic_long_inc_not_zero(&dmabuf->file->f_count) != 0L;
}

If we end up adding epi_fget(), we'll have 2 cases of using
"atomic_long_inc_not_zero" for f_count. Do we need some kind of blessed
helper to live in file.h or something, with appropriate comments?

-- 
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

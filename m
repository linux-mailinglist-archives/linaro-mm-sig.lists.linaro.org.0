Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMIuOt1asWmGtwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2026 13:06:53 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 764D62636A6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2026 13:06:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A57B3F78F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2026 12:06:52 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by lists.linaro.org (Postfix) with ESMTPS id B73F93F78F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2026 12:06:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=k+KOrtCs;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.53 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-89a6e6225e4so1718206d6.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2026 05:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1773230810; x=1773835610; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5ZXmtH045hjysMA/sKvjaPzLvB8ln7AQNBNr7xSrgrM=;
        b=k+KOrtCsIRy439AD/YpXy86BJ/mAPD6jiny4fMf8NjFHk+CckWvc7/lVdEh5W6cf8l
         OrrQIal/NWINpXwBn2W3Q8LPfjYiXKsmvNg7Oj+kXiZQqHuMU5n857HiYmxmeGInqdsi
         9V8taIS4tajH0fgkn+BuqMmfht+t5R5TRt8c+nmOJVNJiUDIW9Nqm1YbqyrlT/0X1rHG
         ohGkcNIVEHZTRhnXieOjpJ5QViDzeKMV6CXT36HRDferJqaV8vhv53gu4xG4KJoR/8RV
         QYc7cG573X6Kwb++eG/5eNjZtTyyQ771Z98IkuN91jNDd7WD6vmOz9bKEVDkJFdMHW1p
         Q0tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230810; x=1773835610;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ZXmtH045hjysMA/sKvjaPzLvB8ln7AQNBNr7xSrgrM=;
        b=EaaBHIhWDJ8o5HG/CVjjhZMhDXCYCWBo/BMSTSAeKVU3paqCJWbfi2UkTxI7l5Gr0q
         jOo2laUDF2Tf9AGwQp1LGjGcfaP4a5Baf+6EEVBBjqfSChsMLzNlXDMr9efWeXRbiMNQ
         p8yhINXqPyxSAWydyr7nJpqEhHKKo9Spuie+xgKiROraVy3f1vM0dAiJPnd80FJU4Kqr
         TMzle2G1AIuwqbotn2FphQpPKSdi8L/20VoXx6O8Bv20bDLvieRwvGmY2BcA1QfHOAOR
         bezAFdG8ySJs87rifW5Jn4OGko1ONm+OVtUt+ug2HfLI5Il52QP1nrJrg89+Z0lFI1Te
         e/3Q==
X-Forwarded-Encrypted: i=1; AJvYcCU4tY4LkbPh+3XadjWmdM/RnJ7BUQN0jJvZoA56DDTQ8Krut6Xpohq5zaaK7iwp9eMgsAggd6SrAE2QvM/q@lists.linaro.org
X-Gm-Message-State: AOJu0Yx0n75WhakmRlE8N1EFzcKhvpem8V5//ouufn++gRlylCOXs344
	7xG8PZeTzx+76WcyzlpMAPwHwZGsoWBXI/NuWs5NPFGsW82RjxEBHkGUehI+OoarGFc=
X-Gm-Gg: ATEYQzwqMJt1/90PkJiqQgwz9hVz2hw9OlVDywEOaaDe8FZEzNWZnix/Zx363rPQdK2
	t3H67KUpo4Ue2VRNkOyfY5i3hv/EBRcDXm0LDMLcYU7otQGOqxN8ftKhVvO/o5qyBikQbwFKTuk
	VQSH4+pBbAzWhFwax5/CIBJyH1txJ+JMmc98Xd99i8eM1UlgNKzZXRtSmAhja+YQyGp76JMIZNi
	GVaxR9cDHtANHK902x9aWDtu+V0CZAKbddByIOC5kKOp7CV4y6OzRr0NpvdDo1ccueelc9ANM+9
	0kzIc3N0eUN9FLb9AAnjkaTKVvRVOgJ4wAPy3oiRpJlwe7yNo8BcQJjCTB3Oe5S4OfcHOzy+Oo9
	NOwfwN9k0LM4N/iFXCqmdMoJdAO1N0fZ5ANWN2QyOFfj9zrtpbrIGPfJh0GXrnjkxEqExRLHk/G
	7Zlb4CYm0rM9TEEeFDj5OI05gsWuSZBlDsdWl4UbVicy+9y84E/xH3a483QQMrNkSMRS9gSpEbu
	yddsOXZ
X-Received: by 2002:a05:6214:c68:b0:89a:18bc:2b32 with SMTP id 6a1803df08f44-89a66a85f91mr27777226d6.37.1773230810200;
        Wed, 11 Mar 2026 05:06:50 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65cfd520sm12610946d6.36.2026.03.11.05.06.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 05:06:49 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1w0IKu-000000069ke-42RA;
	Wed, 11 Mar 2026 09:06:48 -0300
Date: Wed, 11 Mar 2026 09:06:48 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Message-ID: <20260311120648.GV1687929@ziepe.ca>
References: <20260308-scatterlist-v1-1-39c4566b0bba@gmail.com>
 <20260308180826.GG1687929@ziepe.ca>
 <CAHijbEX=LN_ntp6zwsqy3sW7EB+E6cBCWnrKZb_RqdNG=Et_3g@mail.gmail.com>
 <IA0PR11MB7185574E3A63285860017D69F846A@IA0PR11MB7185.namprd11.prod.outlook.com>
 <20260310125953.GS1687929@ziepe.ca>
 <IA0PR11MB71859E28938D1695D4223B8AF847A@IA0PR11MB7185.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <IA0PR11MB71859E28938D1695D4223B8AF847A@IA0PR11MB7185.namprd11.prod.outlook.com>
X-Spamd-Bar: ---
Message-ID-Hash: T24U65EGMRJ7G2UA7426DNMWMVH26KOY
X-Message-ID-Hash: T24U65EGMRJ7G2UA7426DNMWMVH26KOY
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Julian Orth <ju.orth@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] lib/scatterlist: fix sg_page_count and sg_dma_page_count
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T24U65EGMRJ7G2UA7426DNMWMVH26KOY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 764D62636A6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,linux.intel.com,vger.kernel.org,redhat.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[ziepe.ca];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.636];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,linaro.org:email]
X-Rspamd-Action: no action

On Wed, Mar 11, 2026 at 06:53:51AM +0000, Kasireddy, Vivek wrote:

> So, given the current situation, what is the right thing to do?
> Should we take your patch that brings back the pages array and treat it as
> a temporary fix until equivalent folio based APIs are available?

IMHO, yes. It saves memory, increases performance, fixes the bug and
uses the APIs properly.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

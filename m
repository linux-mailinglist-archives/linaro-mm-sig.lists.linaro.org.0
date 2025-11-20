Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9BFC7426B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 14:21:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 03B813F8FD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 13:21:04 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by lists.linaro.org (Postfix) with ESMTPS id DF0853F73A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 13:20:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=bICmzCb0;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.181 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-8b2dcdde698so116999385a.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 05:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1763644847; x=1764249647; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GaI8T1P9V7HUSR5GC1P83jhUObFww+4fRanAKkUJgJM=;
        b=bICmzCb0YTec+6ZDV71MbI+AV1UJlT4vGnDqYqROnl3yOAyoIsRTUyZQ5eSTl6Nhe5
         5ocgTqQIQfJN9iyvENYrs14UUV8zOcEadyrHwsreYkTUAsMK3VNbPTi/ZkWZJiKYuVMI
         oXWwtj+yq7JkRwAy4XFUGxSYXsWYKWsStAeCDJrNc61bbSfuM7AMrYtPzl+9Ysp3XRDV
         7xry6uDumcN+ew75iEnGEWnu9xu992+iDzZCLlYzSQv3lrMBqRDc7/eHzejeQyV+qehZ
         bziUDPPkxXeoFuzQes1WOX7D5UJ5iQx5k9/6qOhPbuCEuxQqX5a5wMkUogB3akcamqzY
         YYMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763644847; x=1764249647;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GaI8T1P9V7HUSR5GC1P83jhUObFww+4fRanAKkUJgJM=;
        b=VFY0Nm7LExbXbkkMRaX76aKG3eVYPcqRcgCIZIK/+eTNPH6nysM3O9HAlsMeLbExx+
         MyEfch8R0zbNuZ9E7ve23bHUg380Xv6TMTFZ69wgd+HxwXAcQKc73j7w2pW4IHEfbHta
         Y8EVwBKyCNhCJyMwxUWAhmol/KOXoqH7Er/pSbIIhCaih5tFrY4IPt4gfO0nCUxiApKT
         dj1yG6wrKJsrbrg1KCP1hzd/kpxhTlRkbVRIh4AWl31P0A5cp50+PEr1P4Qn2q4NELnZ
         pijSHFwashGr1gZf4UkyX2ZPL9t/xKOLU2EPoW0PpJNHX94Tatky31jPL9viGXf2YPfl
         9tgA==
X-Forwarded-Encrypted: i=1; AJvYcCWp4cIXuDaufifWRHNWn4x4f2jyaQr3RlhlISMRaCPKf0i5xTQ4lZ1uhM88Aghmrn9OyTAJpRd2hKLCxiU0@lists.linaro.org
X-Gm-Message-State: AOJu0Yy3T+JaXKWoIYMKgPGUAS13bPASN0UILiapIlQkb8iYpMUIPeQ9
	avDcBUa/Oyn8TjlE9KnuSRLFkWGqkY7cbr+UA+5/MK+UMNifq6T1tu712AFwz9I6H0g=
X-Gm-Gg: ASbGncsFdWPFUPJJ6GZRvOqsl4JtJpkwFAipvNfAsxgpV+rrTFtWa0qO7+RO893x2nG
	GYSRTqsyqzGBMyWVmwWlIOsWLfTR+Wlp4mnKe/vw4cE/amdnoSXtCwynHvUPYR7JP4GV+wCDCWY
	bN/0/U+D4/5Iw0wtbnalVqQWTTcuzSJ1l93Dxvb5czI/uMRAWs1ED2HUxD+wJmYgX6UuNIOZkF4
	hEAekQhhqOhaDkVkZTDKm+RGdhalPn3EKCi5jnV5eBxVBJ8WzHDu1rPPb/7CEd9fFzmNTM2d58e
	5W8LXnNIK7LEMsD0ObFdnKrEBXUj07SDRc8QxiI5R3hpKbUvtr7dGW6G1CfmxQFENOuOFV6cRxn
	cUdtWKNjG+FDKEHhiJ9EHhGGaiFS1Gxs89fHlSsqiGbTUanmzuRJ6kRl11g8NIJWDIJaXI6jcN3
	wT5lYi/0brcQEX1nfyYCiQmPzVwWC0YRxpwj4WX104/FAKr/rMHBxIFFip
X-Google-Smtp-Source: AGHT+IHQ4fmxCAI4/D2tK1B8sYqUFbudidu6PckWMercsX/iRS90WBjHNHkg95yPWC8b179KW1QKQA==
X-Received: by 2002:a05:620a:318a:b0:89f:27dc:6536 with SMTP id af79cd13be357-8b32a193b85mr303322785a.54.1763644847316;
        Thu, 20 Nov 2025 05:20:47 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b3295c13ccsm148498285a.26.2025.11.20.05.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 05:20:46 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vM4ac-00000000gLM-0tBz;
	Thu, 20 Nov 2025 09:20:46 -0400
Date: Thu, 20 Nov 2025 09:20:46 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251120132046.GU17968@ziepe.ca>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
 <20251119132511.GK17968@ziepe.ca>
 <69436b2a-108d-4a5a-8025-c94348b74db6@amd.com>
 <20251119193114.GP17968@ziepe.ca>
 <c115432c-b63d-4b99-be18-0bf96398e153@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c115432c-b63d-4b99-be18-0bf96398e153@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.49 / 15.00];
	BAYES_HAM(-2.99)[99.96%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.181:from];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DF0853F73A
X-Spamd-Bar: ---
Message-ID-Hash: Y5IREMKC4VOQWKVVXIXPP3UPUGQK42C7
X-Message-ID-Hash: Y5IREMKC4VOQWKVVXIXPP3UPUGQK42C7
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex
  Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y5IREMKC4VOQWKVVXIXPP3UPUGQK42C7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBOb3YgMjAsIDIwMjUgYXQgMDg6MDg6MjdBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPj4gVGhlIGV4cG9ydGVyIHNob3VsZCBiZSBhYmxlIHRvIGRlY2lkZSBpZiBp
dCBhY3R1YWxseSB3YW50cyB0byB1c2UNCj4gPj4gUDJQIHdoZW4gdGhlIHRyYW5zZmVyIGhhcyB0
byBnbyB0aHJvdWdoIHRoZSBob3N0IGJyaWRnZSAoZS5nLiB3aGVuDQo+ID4+IElPTU1VL2JyaWRn
ZSByb3V0aW5nIGJpdHMgYXJlIGVuYWJsZWQpLg0KPiA+IA0KPiA+IFN1cmUsIGJ1dCB0aGlzIGlz
IGEgc2ltcGxpZmllZCBoZWxwZXIgZm9yIGV4cG9ydGVycyB0aGF0IGRvbid0IGhhdmUNCj4gPiBj
aG9pY2VzIHdoZXJlIHRoZSBtZW1vcnkgY29tZXMgZnJvbS4NCj4gDQo+IFRoYXQgaXMgZXh0cmVt
ZWx5IHF1ZXN0aW9uYWJsZSBhcyBqdXN0aWZpY2F0aW9uIHRvIHB1dCB0aGF0IGluIGNvbW1vbiBE
TUEtYnVmIGNvZGUuDQoNCkZXSVcgd2UgYWxyZWFkeSBoYXZlIHBhdGNoZXMgZm9yIGEgUkRNQSBl
eHBvcnRlciBsaW5lZCB1cCB0byB1c2UgaXQgYXMNCndlbGwuIFRoYXQncyB0d28gdXNlcnMgYWxy
ZWFkeS4uLg0KDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

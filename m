Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A110A635D63
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 13:46:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9AADA3EC70
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 12:46:39 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by lists.linaro.org (Postfix) with ESMTPS id 1CF013ED5F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 12:46:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b="OWqc+/Hc";
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.169 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f169.google.com with SMTP id z1so12279409qkl.9
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 04:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vHSuZN4AhWII4Tion5kFnCBewGFiwsSNV+ZIjchf+f8=;
        b=OWqc+/Hcjy1lIN4itSKeUt1Kcn+4uEhyp7axNuC8sBdmRDxXEr1/45JaFAlkEs+ANC
         TTzox7M2rFR6joSL/dcTy/ayQ8/phDoQeWBmeyKWeFkHysVtMOruUYasTM+0EYVpVBTU
         iJJYzUW4aIhktj/Mn0/YtwGPsitoADuYiRaIdCj4+Ifq9+PRR5vjOD0PqtFu1VnIoEp5
         qbvtl/Al85v7h5rs6UtSs4Ie6avliszVZ2ug/lrB5SPZb7L8ptPkjy5Ui9BPfpfEIca8
         20LOtxII2GHAjYH2KE3XX4AZsrbcUetO5EM2ayOptn03TFfYmFrecMcMsQI2P6Hg2l1r
         KAmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vHSuZN4AhWII4Tion5kFnCBewGFiwsSNV+ZIjchf+f8=;
        b=F6HBj2KQAxUoYqJ+z4cuaRBgFmMTt5ZBbvvkmk1eXo0P4v+Kvs1tem1eoqBrrLWUax
         M4QwxEPwSNNx2COROlIFhmQLg16YPJT7Xaa2v1TwyDsx00yeFnYMK3M97h3ZuRAHwZfU
         aF9G5X7W2WPyZV1nJHDihIAtb+EcAIKFOgkX72huDXybmSCkNj1wsHl76i1xazayUg/Y
         SN0w/b3PXnhUwdfYv6qiqumJ33j/oXburPhyieg0uXAvYoGiVlFOVFw09mIzckAUg0es
         AKgoDOH1WS7SUDrGuKcKkh5PmDP3Yn4K4kAtmDpykhnXBNmb/5xyTS7AjlduYn3UJwBD
         v3OA==
X-Gm-Message-State: ANoB5pnk3SEv5CK1tCVFnChoX1cn8oBHzdxOi7pvRGg/eB8UvqAdSTz8
	VdbzcNxsDAyRdfPiCeRb+9pMEQ==
X-Google-Smtp-Source: AA0mqf5Pm6Gy/kcLjlysVCJSGWeOxmxlzXEFr3h2NLg2kKMpx3KAmbZGLymStChcFWZp5XFVCFIotQ==
X-Received: by 2002:a05:620a:7eb:b0:6fa:aa59:ef9d with SMTP id k11-20020a05620a07eb00b006faaa59ef9dmr25280510qkk.108.1669207589794;
        Wed, 23 Nov 2022 04:46:29 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-122-23.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.122.23])
        by smtp.gmail.com with ESMTPSA id r5-20020a05620a298500b006ecf030ef15sm12216462qkp.65.2022.11.23.04.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 04:46:28 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1oxp91-00AJCh-Qz;
	Wed, 23 Nov 2022 08:46:27 -0400
Date: Wed, 23 Nov 2022 08:46:27 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <Y34WI9SZdiH/p1tA@ziepe.ca>
References: <Y30PDdsvHIJo5YHR@ziepe.ca>
 <CAKMK7uEccwYTNwDYQazmZvTfBFQOikZt5A6BmegweyO-inKYbQ@mail.gmail.com>
 <Y30Z4VxT7Wdoc1Lc@ziepe.ca>
 <CAKMK7uE=8eqyh9BKg_+7B1jjMi6K4wrmPyi9xeLVvVYFxBgF9g@mail.gmail.com>
 <Y30kK6dsssSLJVgp@ziepe.ca>
 <CAKMK7uFQQkG82PzuSTGQTnN3ZNps5N_4TjR5NRWo0LaJkEaNew@mail.gmail.com>
 <3d8607b4-973d-945d-c184-260157ade7c3@amd.com>
 <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com>
 <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
X-Rspamd-Queue-Id: 1CF013ED5F
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_NA(0.00)[ziepe.ca];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-qk1-f169.google.com:rdns,mail-qk1-f169.google.com:helo];
	RCPT_COUNT_TWELVE(0.00)[13];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.169:from];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,lists.freedesktop.org,suse.de,google.com,infradead.org,linaro.org,intel.com,vger.kernel.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+];
	URIBL_BLOCKED(0.00)[mail-qk1-f169.google.com:rdns,mail-qk1-f169.google.com:helo];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: OEMIWA2URUVXUBJ2GVJCOUOHWUFQKAU7
X-Message-ID-Hash: OEMIWA2URUVXUBJ2GVJCOUOHWUFQKAU7
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OEMIWA2URUVXUBJ2GVJCOUOHWUFQKAU7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Nov 23, 2022 at 11:06:55AM +0100, Daniel Vetter wrote:

> > Maybe a GFP flag to set the page reference count to zero or something
> > like this?
> 
> Hm yeah that might work. I'm not sure what it will all break though?
> And we'd need to make sure that underflowing the page refcount dies in
> a backtrace.

Mucking with the refcount like this to protect against crazy out of
tree drives seems horrible..

The WARN_ON(pag_count(p) != 1) seems like a reasonable thing to do
though, though you must combine this with the special PTE flag..

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

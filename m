Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHTeJs8VsGknfgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 13:59:59 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2699124F470
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 13:59:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C5B13F79F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 12:59:58 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by lists.linaro.org (Postfix) with ESMTPS id AB1663F79F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 12:59:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=Z1evW9hh;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.175 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-50919fc3a14so26552011cf.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 05:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1773147595; x=1773752395; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IdfZ1gAzWMaWG4bFpHCyz70rMMacJ2An+it0IXdc3OE=;
        b=Z1evW9hhe7woGu3/KCa5DmKH0hphtkI28V2nqUPB4c41WGmXRrN1/VkkamA0HOosv6
         wk4wNzL1gF17cTHHquZk1twxEwVyvhW8Y9fud2dihavdzlEqHNghTVcDy9UYO/Mb9vz8
         4un3OqaN93YF+Tps+lJUYAPH5A4yAMimQNtssWREyobw0eAgQmv0PHbs5gHHriCtKSjV
         k43d6c5GJlG/PeMRpK+9o0aRR0SX/mFz8FfDPHI5lM86FCWjZqnASZSo7qMy8PfBE0Fd
         TBls5KJSkVnNrN4cuxaDH6TEJlhmbqyx0zZEsflkTksR1FgITFi8ES2/U+S47B1BQ4KA
         2K1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773147595; x=1773752395;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IdfZ1gAzWMaWG4bFpHCyz70rMMacJ2An+it0IXdc3OE=;
        b=aThZ0nq7g/Zmi0Om65PzJQDIjoh3vSbikXvZpu8SJRzJA5qqCFvtT4qxz62NtBs58Z
         jWkFvL8AHg58VUcLZpjJdmJEA6Sz3iAAioBZj2RQ5jf0B4Hs+j0Ril2/IJCGPQMi1uWS
         4KYlrGRjjOEsipHkqAxVYuGXVEtFiEyynb36xzOpK73au31P2QfOPfwwsBwQXDFwpEFp
         c/ExMXFdEK608J7HsVPrdKjGUWs7d7s3njc21p03YdqhUWqMhuFiHrVcjRJBtlAscj/x
         vCK88XkXEFuXgK52yhbjwTK3rx5DIskXJICoIe/iOLg514ytFtEJhfLrJVb1RgCyyNaQ
         SQLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUp1hFeOu3zT4wQvQiS9FRGG+8q5xk32E3JRO1054sjHjmiO2rUqM0Mdcg6LhPpK/F77U1QYfGNI9sEFQ0O@lists.linaro.org
X-Gm-Message-State: AOJu0YxxhB+B/1IGyd8BJL9RnpX72KMJ9vjAaQ13U85FD9siWlBJ5mBc
	2T9W7V4B2JkOGvPN6usWP4jCpPvpWojp3OvqQ0jF+zfoZYFyj1Lod6t3+Vi/JFQdc7o=
X-Gm-Gg: ATEYQzzMEIuruJN+qLnFaGHpiuWFcV1zMBRXm4Jn4a9M1NOE6RFw/bPEaVceREoZpsS
	SSAvhHetR7XLFEBod+DJiPaSVA9jQZreTZjJ6r5jh/Bb7QsUsLEVO/3TRXuDZ9eouYa987dO1pT
	GlfrCsirLkNJY3kim0EIJ0ENAx2cB7HK7CfOm8YucrnB0zEv6xHovFH6i2cur+acLgEl9Om/w44
	JKAuCVYUFq0StcUknK10w0SjzbNRFO4iGgh674lo50Rj+NCVg3owpHl5By9lWal5pIN2MCI0TmK
	5bwogNXsZRjkwrFd3QvBjtB3MFoO1skgOIw174FIUKXxExNYgjYYUetsEYFl5RpAJ7PfaGkcx+C
	xgn2u6XHRnTqAJDXODhmTn1wnxbyTqOAxkSifW1wO6bjIX65d78SfNfn2tSDwUBbtdZ/LsC7NUQ
	YTtkB2ODdmTN+VKcnLWyr1BkGU6p9ZVSUfXw1E06qeaFD1ITKvbczSDkxJbaL2y1+4DVHgxq9AJ
	u7EZXZ+
X-Received: by 2002:a05:622a:1aa1:b0:509:1b34:5350 with SMTP id d75a77b69052e-5091b34579dmr86614331cf.27.1773147595190;
        Tue, 10 Mar 2026 05:59:55 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-508fd904d51sm77155411cf.4.2026.03.10.05.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 05:59:54 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vzwgj-00000005Uqh-3i7S;
	Tue, 10 Mar 2026 09:59:53 -0300
Date: Tue, 10 Mar 2026 09:59:53 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Message-ID: <20260310125953.GS1687929@ziepe.ca>
References: <20260308-scatterlist-v1-1-39c4566b0bba@gmail.com>
 <20260308180826.GG1687929@ziepe.ca>
 <CAHijbEX=LN_ntp6zwsqy3sW7EB+E6cBCWnrKZb_RqdNG=Et_3g@mail.gmail.com>
 <IA0PR11MB7185574E3A63285860017D69F846A@IA0PR11MB7185.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <IA0PR11MB7185574E3A63285860017D69F846A@IA0PR11MB7185.namprd11.prod.outlook.com>
X-Spamd-Bar: ---
Message-ID-Hash: FQRAFBNVHIQ647C5NWE2YLWCTJWLHXCI
X-Message-ID-Hash: FQRAFBNVHIQ647C5NWE2YLWCTJWLHXCI
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Julian Orth <ju.orth@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Thomas Hellstrom <thellstrom@vmware.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] lib/scatterlist: fix sg_page_count and sg_dma_page_count
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FQRAFBNVHIQ647C5NWE2YLWCTJWLHXCI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 2699124F470
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,linux.intel.com,vmware.com,vger.kernel.org,redhat.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	DMARC_NA(0.00)[ziepe.ca];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.624];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 05:49:23AM +0000, Kasireddy, Vivek wrote:
> There are a couple of reasons why we got rid of the pages array:
> - Back then, there was some confusion about whether a struct page would
>   exist or not for tail pages when HVO is enabled. Regardless, there was also
>   a concern about exposing tail pages outside hugetlb code.

The existing code relies on struct page for the vmap:

        for (pg = 0; pg < ubuf->pagecount; pg++)
                pages[pg] = folio_page(ubuf->folios[pg],
                                       ubuf->offsets[pg] >> PAGE_SHIFT);

Tail pages always exist, they are required by many interfaces.

> - And, we also wanted to prepare for a future where struct page would not
>   exist anymore, so, it made sense to just use folios only.

If you can 100% stick with whole folios then great, but we don't have
the APIs for that cases udmabuf needs right now. Most likely we'd
expect to use phys_addr_t for scatterlist and direct full folio for
vmap. Neither is helped by the datastructure in udmabuf.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

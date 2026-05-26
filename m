Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGZ0MZ+RFWovWgcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 May 2026 14:27:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAA95D5840
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 May 2026 14:27:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CCBE406B4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 May 2026 12:27:09 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by lists.linaro.org (Postfix) with ESMTPS id 8FFD03F81E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 May 2026 12:26:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=fJFHHKNO;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.182 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-91066394ef8so813609485a.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 26 May 2026 05:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1779798418; x=1780403218; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QQVPF5z8tEWy9hSyAGSwHCVBtb21IOuG2HFA7xrSBPI=;
        b=fJFHHKNOs4yh5VJ2xcaavrSX1jTYcQ0axnEG4DYPZrUtY7qdDWP37dVQDwDS7Sqocu
         TPESFXlVFZwLPynFQMWhBVWBjubPKvJQd11lhX6lJMedHl+kHhm5+/hGtWJkZ5sX5Hy/
         EXwRFjpANlAz9lywdNVVsFiJlLRct2yP3brk50N1OQgfDsB/cCpcz90wqAGN3EorbcrP
         87ATTaegZ5WORk+O/iXHQ+2kN3bJ5tCJ/NtTTz6r5ypduuVbo9BrsH3zTUDn5kiEKBdE
         I/AKTpzZE1iUrnxQpfau1n0RMEthA+64dELfR1XZggjZd1IKp3QJjnIFlZlsxXyN1ZsZ
         gbqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779798418; x=1780403218;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QQVPF5z8tEWy9hSyAGSwHCVBtb21IOuG2HFA7xrSBPI=;
        b=riYHeL2XCjj6GAnyUrMQqkCtojdHasHDS4oh+xkbFwiX5IqHPsfO57GV9WxYPD5CtP
         ArULT/yE4huBIWS62cqa/TcsjFruu98elB9ixfxMcJ8uQCLuVpJ8l7BPq9yOqepbtzAT
         2Po50NbTKj17OEVWPi4LzBO8i8e0W7guduoxsWtOV7hU/ruWwWM9d0Qq/FK77L8zdJMO
         cizYSYlQnx9imghF8JB3XqEKRAwF/Sm8VFVI58jTFfQ4sR7iOYqUECmXfgv5aVocVlHF
         UvbnDSvdn5eNTjD0X9aNLBGURylkNpCSFIZmeFAAn/iSYNmm8pcrf2ejxXrK27+G0aJG
         p+Pw==
X-Forwarded-Encrypted: i=1; AFNElJ8OTjXUJFyK4nwIbOvo9iqTLg7k3w6MsfGsGnyTDWQgs1VG218ICXYC8O0aeWEBwhB68GaE1lndJva2Z3sv@lists.linaro.org
X-Gm-Message-State: AOJu0YyVSlEimGlMbaupiOnU3dahtpPKCNKw5BmXrgPANBrrdpW9LzYN
	Iu01I8J8ixdteVI4ack1xbUZ1RbQthqQ1WzsyAESwcIKZGpqfEnyOcyWWxHykIur3JM=
X-Gm-Gg: Acq92OG7ctBCXrf1VZcuF9mZCfCbMx4SJXOGKSH93cD3z1TxM8jn6JXNjv21INYziHt
	JM0WyaB8QQi/D7Hw6ZgfSmOE5GqiPN6H7EKjZonE6Y9so7Se3EnimJn1QOkdbaAhdt3hmHq6JqM
	tHMpV6eSHuoa/X9gUoaYAN+INuc2mx0suYN0rpa1FnUdpsJqZ+SNAmAThHcFrUZIDMtPwAXMZNx
	3b3gE/vM+te0PAEnTsKTi+AmWv8GX/Y7KoKFUs0zJJmwKmIpTS7denYsJYHZl2txmby4+8rlqhy
	6GvpzYb0ZlIsTh+9z0G7etyDurqDCpli3ke3tdBnsuGliQ627DWXswXmhGAF4K7cuBsiuy4X8j+
	gASp96KtgTyicnsXR9AYwz+E+lQoPaSh68kvXKPUyU95ALKD8uengf9iVaFhwAX8vRJU6qT1CWw
	M5vubKKpoouz9T6omN5t0AUc61T0dXYZWaevlkJq6k0BWnkcJsE04U0NQrdvBmZqpb85yKbPdAj
	zAKdlyzSxTd+BJV
X-Received: by 2002:a05:620a:29d5:b0:914:c7b6:e29c with SMTP id af79cd13be357-914c7b6e6a4mr1836526485a.56.1779798418003;
        Tue, 26 May 2026 05:26:58 -0700 (PDT)
Received: from ziepe.ca (crbknf0213w-47-54-130-67.pppoe-dynamic.high-speed.nl.bellaliant.net. [47.54.130.67])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-914f8801390sm215458285a.36.2026.05.26.05.26.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2026 05:26:57 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1wRqs4-0000000DONN-3pnp;
	Tue, 26 May 2026 09:26:56 -0300
Date: Tue, 26 May 2026 09:26:56 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Ankit Soni <Ankit.Soni@amd.com>
Message-ID: <20260526122656.GE2487554@ziepe.ca>
References: <20260526111034.4079-1-Ankit.Soni@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260526111034.4079-1-Ankit.Soni@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: MSP3OQ5HJQJXDSXCVW33ESJLJ2TQ7XF7
X-Message-ID-Hash: MSP3OQ5HJQJXDSXCVW33ESJLJ2TQ7XF7
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Leon Romanovsky <leon@kernel.org>, Vasant Hegde <vasant.hegde@amd.com>, iommu@lists.linux.dev, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] iommufd: take dma_resv lock before dma_buf_unpin() in release path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MSP3OQ5HJQJXDSXCVW33ESJLJ2TQ7XF7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	DMARC_NA(0.00)[ziepe.ca];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.977];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 4EAA95D5840
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 26, 2026 at 11:10:34AM +0000, Ankit Soni wrote:
> dma_buf_unpin() requires the caller to hold the exporter's dma_resv
> lock:
> 
>   void dma_buf_unpin(struct dma_buf_attachment *attach)
>   {
>           ...
>           dma_resv_assert_held(dmabuf->resv);
>           ...
>   }
> 
> iopt_release_pages() calls dma_buf_unpin() without taking that lock,
> so every iommufd_ioas_destroy()/iommufd_ioas_unmap() that releases
> the last reference on a DMABUF-backed iopt_pages triggers a WARN.
> This was hit while running tools/testing/selftests/iommu/iommufd:

Any idea why this is comming up now? Did I run the tests without some
kind of debug option to turn on that assertion maybe?

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

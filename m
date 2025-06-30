Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 30034AEE9FC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Jul 2025 00:08:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A559242503
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Jun 2025 22:08:31 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id AB35F40E0D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Jun 2025 22:08:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=VL40OHNc;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 76108A53625;
	Mon, 30 Jun 2025 22:08:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02EC6C4CEE3;
	Mon, 30 Jun 2025 22:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751321300;
	bh=mAQuo7UGn82GJOtu/IIlK8rtii7eZp/rjMYxtF0PlYo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VL40OHNcHDMLwYYUsY2v5Qf34MWJ2qc3/xqc8W7+CYsEAQuvGlYMWL/UBQf3XrjNp
	 2RFl4J6/UHJjv+UDpUP15FdaWVRR9DrZM9bw4RCNxASw39j2oHb7gYmMIy7wmdXH6W
	 cAenUfvZbee+1eZwdnoC0yOLPK1XyECYfbyUXe3XDTH5PZvvr+ozzRg7QzYe0V+E+W
	 Y1QcFnz5FvLE7wto2a94+fkKlRVZF6QRbz4u/R1w4kWElRaHd8/LXFoOXtXclnhlWr
	 cKohaBfzb3y93X+XHhgMWM8sxFW9WzcYgcbbGuSnUnVNJLuXE5z6Q5mzhxtrxgSehM
	 HjGECpIUzPddw==
Date: Mon, 30 Jun 2025 17:08:19 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Message-ID: <20250630220819.GA3454648-robh@kernel.org>
References: <20250617-dma-buf-ecc-heap-v5-0-0abdc5863a4f@kernel.org>
 <20250617-dma-buf-ecc-heap-v5-1-0abdc5863a4f@kernel.org>
 <20250627193132.GB4032621-robh@kernel.org>
 <20250630-attentive-fortunate-turaco-2e36d2@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250630-attentive-fortunate-turaco-2e36d2@houat>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AB35F40E0D
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: NXYTDA7MDAIHF3SUHSBTBATMUN5WMFPO
X-Message-ID-Hash: NXYTDA7MDAIHF3SUHSBTBATMUN5WMFPO
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dt-bindings: reserved-memory: Introduce carved-out memory region binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NXYTDA7MDAIHF3SUHSBTBATMUN5WMFPO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jun 30, 2025 at 06:41:38PM +0200, Maxime Ripard wrote:
> Hi Rob,
> 
> On Fri, Jun 27, 2025 at 02:31:32PM -0500, Rob Herring wrote:
> > On Tue, Jun 17, 2025 at 02:25:40PM +0200, Maxime Ripard wrote:
> > > Some parts of the memory can be dedicated to specific purposes and
> > > exposed as a dedicated memory allocator.
> > > 
> > > This is especially useful if that particular region has a particular
> > > properties the rest of the memory doesn't have. For example, some
> > > platforms have their entire RAM covered by ECC but for a small area
> > > meant to be used by applications that don't need ECC, and its associated
> > > overhead.
> > > 
> > > Let's introduce a binding to describe such a region and allow the OS to
> > > create a dedicated memory allocator for it.
> > > 
> > > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > > ---
> > >  .../bindings/reserved-memory/carved-out.yaml       | 49 ++++++++++++++++++++++
> > >  1 file changed, 49 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/reserved-memory/carved-out.yaml b/Documentation/devicetree/bindings/reserved-memory/carved-out.yaml
> > > new file mode 100644
> > > index 0000000000000000000000000000000000000000..9ab5d1ebd9ebd9111b7c064fabe1c45e752da83b
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/reserved-memory/carved-out.yaml
> > > @@ -0,0 +1,49 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/reserved-memory/carved-out.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Carved-out Memory Region
> > > +
> > > +description: |
> > 
> > Don't need '|'.
> > 
> > > +  Specifies that the reserved memory region has been carved out of the
> > > +  main memory allocator, and is intended to be used by the OS as a
> > > +  dedicated memory allocator.
> > 
> > Other than the commit msg, it is completely lost that this is for 
> > ECC-less memory.
> 
> Because it's not. One of the first feedback I got was that the way to
> identify what a heap provides was the heap name.
> 
> So, as far as the binding go, a heap just exposes a chunk of memory the
> memory allocator wouldn't use. The actual semantics of that chunk of
> memory don't matter.

But they do because you use one carve out for one thing and another 
carve out for another purpose and they probably aren't interchangeable.
For the most part, everything in /reserved-memory is a carve out from 
regular memory though we failed to enforce that.

> > This description applies to CMA area as well. So what's the difference?
> 
> Yeah, I kind of agree, which is why I initially started with a property,
> and you then asked for a compatible.

My issues with properties is we have to support N factorial cases for 
combinations of N properties. It's already fragile. Whereas a compatible 
is (hopefully) well defined as to what's needed and is only 1 more case 
to support.

Rob
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

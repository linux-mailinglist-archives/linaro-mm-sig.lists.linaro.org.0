Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B061C336C6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 05 Nov 2025 00:48:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 995F63F888
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Nov 2025 23:48:43 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 870963F73D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Nov 2025 23:48:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=NitVMveQ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 095B1601EF;
	Tue,  4 Nov 2025 23:48:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75E23C4CEF7;
	Tue,  4 Nov 2025 23:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762300110;
	bh=Q2/QncbSe1650Y8pwvQWHnA5DpeavIeF6BYxviBnp1I=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=NitVMveQvbt1i533gsvJWGVaHAnqN/0sBwsYa/Uj4lT1tXlWsD+c9rFs04/3twCP6
	 hZiAPAEqAx1dsVqmhmLijeiZidxoJv5WKRme4Qbe5uRKVjpPlLhiLdHatBcnqX9CZB
	 kUjOfrDt5nZ/Z0GrQRC9cEePN8uSu2ae7AsOmk2o1ZcHcsNoMu/kJH0jpEQpzHd9zn
	 iSYE+Or3T3HRGVUm/YyU/YgeUs2nfFRKJYdDSVXolI8tOf5+H0OEfZ1iTQ3kdV46Ch
	 rpZfegPYodVRzcnAva0IC6+e8QXTnGqMr+xVEHPg4ZezsNQbQhSrohuqPqC9hubz5u
	 24ZSXGiVLaOXA==
Date: Tue, 4 Nov 2025 15:48:28 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Meghana Malladi <m-malladi@ti.com>
Message-ID: <20251104154828.7aa20642@kernel.org>
In-Reply-To: <c792f4da-3385-4c14-a625-e31b09675c32@ti.com>
References: <20251023093927.1878411-1-m-malladi@ti.com>
	<20251023093927.1878411-3-m-malladi@ti.com>
	<05efdc9a-8704-476e-8179-1a9fc0ada749@redhat.com>
	<ba1b48dc-b544-4c4b-be8a-d39b104cda21@ti.com>
	<c792f4da-3385-4c14-a625-e31b09675c32@ti.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 870963F73D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	TAGGED_RCPT(0.00)[netdev];
	RCPT_COUNT_TWELVE(0.00)[27];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,kernel.org,linutronix.de,linux.dev,intel.com,amd.com,linaro.org,fomichev.me,gmail.com,iogearbox.net,google.com,davemloft.net,lunn.ch,lists.linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,ti.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: VOYA76WAF6MSQTQJIIBNTM4RM2YKKPFH
X-Message-ID-Hash: VOYA76WAF6MSQTQJIIBNTM4RM2YKKPFH
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Paolo Abeni <pabeni@redhat.com>, horms@kernel.org, namcao@linutronix.de, vadim.fedorenko@linux.dev, jacob.e.keller@intel.com, christian.koenig@amd.com, sumit.semwal@linaro.org, sdf@fomichev.me, john.fastabend@gmail.com, hawk@kernel.org, daniel@iogearbox.net, ast@kernel.org, edumazet@google.com, davem@davemloft.net, andrew+netdev@lunn.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, srk@ti.com, Vignesh Raghavendra <vigneshr@ti.com>, Roger Quadros <rogerq@kernel.org>, danishanwar@ti.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [EXTERNAL] Re: [PATCH net-next v4 2/6] net: ti: icssg-prueth: Add XSK pool helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VOYA76WAF6MSQTQJIIBNTM4RM2YKKPFH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 4 Nov 2025 14:23:24 +0530 Meghana Malladi wrote:
> > I tried honoring Jakub's comment to avoid freeing the rx memory wherever 
> > necessary.
> > 
> > "In case of icssg driver, freeing the rx memory is necessary as the
> > rx descriptor memory is owned by the cppi dma controller and can be
> > mapped to a single memory model (pages/xdp buffers) at a given time.
> > In order to remap it, the memory needs to be freed and reallocated."
> 
> Just to make sure we are on the same page, does the above explanation 
> make sense to you or do you want me to make any changes in this series 
> for v5 ?

No. Based on your reply below you seem to understand what is being
asked, so you're expected to do it.

> >> I think you should:
> >> - stop the H/W from processing incoming packets,
> >> - spool all the pending packets
> >> - attach/detach the xsk_pool
> >> - refill the ring
> >> - re-enable the H/W
> > 
> > Current implementation follows the same sequence:
> > 1. Does a channel teardown -> stop incoming traffic
> > 2. free the rx descriptors from free queue and completion queue -> spool 
> > all pending packets/descriptors
> > 3. attach/detach the xsk pool
> > 4. allocate rx descriptors and fill the freeq after mapping them to the 
> > correct memory buffers -> refill the ring
> > 5. restart the NAPI - re-enable the H/W to recv the traffic
> > 
> > I am still working on skipping 2 and 4 steps but this will be a long 
> > shot. Need to make sure all corner cases are getting covered. If this 
> > approach looks doable without causing any regressions I might post it as 
> > a followup patch later in the future.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

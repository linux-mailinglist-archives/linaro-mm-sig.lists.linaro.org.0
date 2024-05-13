Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6B68C4287
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 May 2024 15:51:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 633E644774
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 May 2024 13:51:41 +0000 (UTC)
Received: from mail-4022.proton.ch (mail-4022.proton.ch [185.70.40.22])
	by lists.linaro.org (Postfix) with ESMTPS id 9E59C3F443
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 May 2024 13:51:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=emersion.fr header.s=protonmail3 header.b=aWKGTxcY;
	spf=pass (lists.linaro.org: domain of contact@emersion.fr designates 185.70.40.22 as permitted sender) smtp.mailfrom=contact@emersion.fr;
	dmarc=pass (policy=none) header.from=emersion.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
	s=protonmail3; t=1715608289; x=1715867489;
	bh=rCp4a/BDWi17CHMvgY5xOFl3QoPKRxwfeBuT/Fb98Nk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=aWKGTxcY4wKQzfazyx23U28lrFiumZcz/zIWjprWPjlb+90HEZ3QinH0QcLZhB0w1
	 AU+tYlAaAjNrUCRfki7nrcCXtQjCFzjBSva5vjijed5vbJr6GWsUQlPalvQJ5y97Rt
	 hOddSllCePkYcy/13GUkJzkFK4K4f5X4V/AkRM+Oj/Fb5m4h9mGAeYfzGiElsKBUSS
	 Ne2uofSfC78mYkVdNUrDxiZpK5IMOdrgD2qV6pT7wO7I5IoSJ2IVqiRfPQvcPeF5bg
	 w4B9PkQd4Pt96uvhvTkfJt2RJUYEAKdGj4GKMpLuYSzLfAzHL6UWqPQV0ypt4Ie8yZ
	 LS37it/d2kEgw==
Date: Mon, 13 May 2024 13:51:23 +0000
To: Daniel Vetter <daniel@ffwll.ch>
From: Simon Ser <contact@emersion.fr>
Message-ID: <IXDM2ci-eGvU9RQkT6a52vcV66vr8d0ywbDRFY8gBjjNuMyv8RDgdJS0PvvfnKuPR1fXINPUjOBkKx4vIcshSb2Y11xd3DjfDQ-Np8VIFgQ=@emersion.fr>
In-Reply-To: <Zjue98r4ZgGbMN5K@phenom.ffwll.local>
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com> <20240506-dazzling-nippy-rhino-eabccd@houat> <ZjjdUBYYKXJ1EPr5@phenom.ffwll.local> <cbe5a743-d8be-4b0e-99c4-e804fbadc099@redhat.com> <ZjoNTw-TkPnnWLTG@phenom.ffwll.local> <CAPj87rN3uSZoHpWLSQqz1SW9YMZNj9fkoA_EDEE_bzv-Tw8tSw@mail.gmail.com> <Zjs42PGvilLlF0Cg@phenom.ffwll.local> <CAPj87rN-wSbGSAoB8y3MXCS20_MAQvfpWSeUKYR6XzQ+Oh0FZA@mail.gmail.com> <Zjue98r4ZgGbMN5K@phenom.ffwll.local>
Feedback-ID: 1358184:user:proton
X-Pm-Message-ID: d2a6e70754ffedf294a79e2c65504e513c8e9b24
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9E59C3F443
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[emersion.fr,none];
	R_SPF_ALLOW(-0.20)[+ip4:185.70.40.0/24];
	R_DKIM_ALLOW(-0.20)[emersion.fr:s=protonmail3];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[185.70.40.22:from];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:62371, ipnet:185.70.40.0/24, country:CH];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[fooishbar.org,redhat.com,linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[emersion.fr:+]
X-Rspamd-Action: no action
Message-ID-Hash: UNJRDUZKJUFSFL3SQW77AL2E2LTGQUUY
X-Message-ID-Hash: UNJRDUZKJUFSFL3SQW77AL2E2LTGQUUY
X-MailFrom: contact@emersion.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Stone <daniel@fooishbar.org>, Hans de Goede <hdegoede@redhat.com>, Maxime Ripard <mripard@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UNJRDUZKJUFSFL3SQW77AL2E2LTGQUUY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wednesday, May 8th, 2024 at 17:49, Daniel Vetter <daniel@ffwll.ch> wrote:

> On Wed, May 08, 2024 at 09:38:33AM +0100, Daniel Stone wrote:
> 
> > On Wed, 8 May 2024 at 09:33, Daniel Vetter daniel@ffwll.ch wrote:
> > 
> > > On Wed, May 08, 2024 at 06:46:53AM +0100, Daniel Stone wrote:
> > > 
> > > > That would have the unfortunate side effect of making sandboxed apps
> > > > less efficient on some platforms, since they wouldn't be able to do
> > > > direct scanout anymore ...
> > > 
> > > I was assuming that everyone goes through pipewire, and ideally that is
> > > the only one that can even get at these special chardev.
> > > 
> > > If pipewire is only for sandboxed apps then yeah this aint great :-/
> > 
> > No, PipeWire is fine, I mean graphical apps.
> > 
> > Right now, if your platform requires CMA for display, then the app
> > needs access to the GPU render node and the display node too, in order
> > to allocate buffers which the compositor can scan out directly. If it
> > only has access to the render nodes and not the display node, it won't
> > be able to allocate correctly, so its content will need a composition
> > pass, i.e. performance penalty for sandboxing. But if it can allocate
> > correctly, then hey, it can exhaust CMA just like heaps can.
> > 
> > Personally I think we'd be better off just allowing access and
> > figuring out cgroups later. It's not like the OOM story is great
> > generally, and hey, you can get there with just render nodes ...
> 
> Imo the right fix is to ask the compositor to allocate the buffers in this
> case, and then maybe have some kind of revoke/purge behaviour on these
> buffers. Compositor has an actual idea of who's a candidate for direct
> scanout after all, not the app. Or well at least force migrate the memory
> from cma to shmem.
> 
> If you only whack cgroups on this issue you're still stuck in the world
> where either all apps together can ddos the display or no one can
> realistically direct scanout.
> 
> So yeah on the display side the problem isn't solved either, but we knew
> that already.

What makes scanout memory so special?

The way I see it, any kind of memory will always be a limited resource:
regular programs can exhaust system memory, as well as GPU VRAM, as well
as scanout memory. I think we need to have ways to limit/control/arbiter
the allocations regardless, and I don't think scanout memory should be a
special case here.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAAE8BEB86
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 20:36:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA4784419B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 18:36:35 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id ED0963EC0D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 18:36:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b="X/mgoeSO";
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=none
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 728A3904;
	Tue,  7 May 2024 20:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715106979;
	bh=teQKchOEq9uRazgHEW2r0xLVQ+sR4ZkcVno60PW+UY8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X/mgoeSODr0I6iobUNwoM8X5WMzal5pkTvtETqp7JW0yE1ELUfsgZlkItx6WSn1HJ
	 kzHWjIBCuvr2wAwoOLsnlLqOzbCsETelWIbA77BDOdTVMxL86OdaD3yTc4QfaE4LPe
	 +7YclK0P+9Me7DLG/h1upYg/q3F1J9HBn0qofRIs=
Date: Tue, 7 May 2024 21:36:13 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20240507183613.GB20390@pendragon.ideasonboard.com>
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <ojduxo54lpcbfg2wfuhqhy7k3phncamtklh65z7gvttcwztmhk@zkifewcy4ovi>
 <3c0c7e7e-1530-411b-b7a4-9f13e0ff1f9e@redhat.com>
 <e7ilwp3vc32xze3iu2ejgqlgz44codsktnvyiufjhuf2zxcnnf@tnwzgzoxvbg2>
 <d2a512b2-e6b1-4675-b406-478074bbbe95@linaro.org>
 <Zjpmu_Xj6BPdkDPa@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zjpmu_Xj6BPdkDPa@phenom.ffwll.local>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: ED0963EC0D
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	URIBL_BLOCKED(0.00)[ideasonboard.com:dkim,perceval.ideasonboard.com:rdns,perceval.ideasonboard.com:helo];
	DMARC_NA(0.00)[ideasonboard.com];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,redhat.com,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: YOERW4GFLHMIM6SAWGAQ52R2ZAFXXABU
X-Message-ID-Hash: YOERW4GFLHMIM6SAWGAQ52R2ZAFXXABU
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Maxime Ripard <mripard@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YOERW4GFLHMIM6SAWGAQ52R2ZAFXXABU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, May 07, 2024 at 07:36:59PM +0200, Daniel Vetter wrote:
> On Tue, May 07, 2024 at 04:15:05PM +0100, Bryan O'Donoghue wrote:
> > On 07/05/2024 16:09, Dmitry Baryshkov wrote:
> > > Ah, I see. Then why do you require the DMA-ble buffer at all? If you are
> > > providing data to VPU or DRM, then you should be able to get the buffer
> > > from the data-consuming device.
> > 
> > Because we don't necessarily know what the consuming device is, if any.
> 
> Well ... that's an entirely different issue. And it's unsolved.
> 
> Currently the approach is to allocate where the constraints are usually
> most severe (like display, if you need that, or the camera module for
> input) and then just pray the stack works out without too much copying.
> All userspace (whether the generic glue or the userspace driver depends a
> bit upon the exact api) does need to have a copy fallback for these
> sharing cases, ideally with the copying accelerated by hw.
> 
> If you try to solve this by just preemptive allocating everything as cma
> buffers, then you'll make the situation substantially worse (because now
> you're wasting tons of cma memory where you might not even need it).
> And without really solving the problem, since for some gpus that memory
> might be unusable (because you cannot scan that out on any discrete gpu,
> and sometimes not even on an integrated one).

I think we have a general agreement that the proposed solution is a
stop-gap measure for an unsolved issue.

Note that libcamera is already designed that way. The API is designed to
import buffers, using dma-buf file handles. If an application has a way
to allocate dma-buf instances through another means (from the display or
from a video encoder for instance), it should do so, and use those
buffers with libcamera.

For applications that don't have an easy way to get hold of dma-buf
instances, we have a buffer allocator helper as a side component. That
allocator uses the underlying camera capture device, and allocates
buffers from the V4L2 video device. It's only on platforms where we have
no hardware camera processing (or, rather, platforms where the hardware
vendors doesn't give us access to the camera hardware, such as recent
Intel SoCs, or Qualcomm SoCs used in ARM laptops) that we need to
allocate memory elsewhere.

In the long run, I want a centralized memory allocator accessible by
userspace applications (something similar in purpose to gralloc on
Android), and I want to get rid of buffer allocation in libcamera (and
even in V4L2, in the even longer term). That's the long run.

Shorter term, we have a problem to solve, and the best option we have
found so far is to rely on dma-buf heaps as a backend for the frame
buffer allocatro helper in libcamera for the use case described above.
This won't work in 100% of the cases, clearly. It's a stop-gap measure
until we can do better.

> > Could be VPU, could be Zoom/Hangouts via pipewire, could for argument sake
> > be GPU or DSP.
> > 
> > Also if we introduce a dependency on another device to allocate the output
> > buffers - say always taking the output buffer from the GPU, then we've added
> > another dependency which is more difficult to guarantee across different
> > arches.

-- 
Regards,

Laurent Pinchart
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

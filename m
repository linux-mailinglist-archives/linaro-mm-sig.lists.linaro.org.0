Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A98B83AE910
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jun 2021 14:29:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F6316677A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 21 Jun 2021 12:29:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0D5AE66777; Mon, 21 Jun 2021 12:29:06 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EC6061033;
	Mon, 21 Jun 2021 12:29:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D367260AB5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 12:29:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D101061033; Mon, 21 Jun 2021 12:29:01 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by lists.linaro.org (Postfix) with ESMTPS id CB42F60AB5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 12:28:59 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id
 6-20020a9d07860000b02903e83bf8f8fcso17474104oto.12
 for <linaro-mm-sig@lists.linaro.org>; Mon, 21 Jun 2021 05:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HHQC6lOkJEn8B4ZK4mW/HBR6aX7M4uga90R1ZErZgKw=;
 b=Td38oUyS/9/MPrT4jo5WsEx4w0MWOF/8bM1XyUzvOBwwzScRQorv0t2fw+zHCf7ir0
 h8zpP6oNobDqmDV0rX43vwv23S4wvsx20o1++gTR06+eOXnxOdhaB+3kQbyaZz/2S0tV
 GQVwEXVWhC4IEfs607x4fPCPD20Mejq78fTdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HHQC6lOkJEn8B4ZK4mW/HBR6aX7M4uga90R1ZErZgKw=;
 b=QO0BFFcQN8he3wFmHfnkko7FiyjW8/zFeb2lVhQu2EC4mNXXv/0h8DMrca+QIO07+G
 nxhSgTt3HzuXpMfb23NJsU5mmABoMUEtnzplGTG6otZZqaAjpr1oQ1kyRsNatQwT9CrG
 uHK1EPqPytiJukFE6dvKevnQUlEiSQiNr+B164qKA76f18O7ISgYL4PfwlX4VyV7bFzo
 QwKUBDxh5NW9C9vrbDyW44DnoitKYLkgklrFDP/HHsY/vjWup+07GebLlwMwKdiIxqXF
 MnbsFJmFTyzlBl/HkKCXkd0/FOIcNwFBxRAZLvZ3XT5H6c+0UXRpRRpYIJnhoEdU5V2R
 Uo9Q==
X-Gm-Message-State: AOAM531djPx4xCBjrYD9cRsLyU3luEoRRxAsGC+2qxo8s8kBBQ47yPsH
 7BS7+a2QFS8KHBApe3L8XOyXrB21LBJMnr6X35KFzQ==
X-Google-Smtp-Source: ABdhPJwD0i9Zn4q4SoQulAg+xyZR3j3c5+btpLl6Z1t9xWUhyH1ThXXNgyVXCPxYSRcrINNnl8lEcpNTDGpjBNUKKJE=
X-Received: by 2002:a9d:12eb:: with SMTP id g98mr20269296otg.303.1624278539116; 
 Mon, 21 Jun 2021 05:28:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210618123615.11456-1-ogabbay@kernel.org>
In-Reply-To: <20210618123615.11456-1-ogabbay@kernel.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 21 Jun 2021 14:28:48 +0200
Message-ID: <CAKMK7uFOfoxbD2Z5mb-qHFnUe5rObGKQ6Ygh--HSH9M=9bziGg@mail.gmail.com>
To: Oded Gabbay <ogabbay@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, 
 linux-rdma <linux-rdma@vger.kernel.org>, 
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Doug Ledford <dledford@redhat.com>, 
 "airlied@gmail.com" <airlied@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/2] habanalabs: define uAPI to
 export FD for DMA-BUF
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Greg KH <gregkh@linuxfoundation.org>, sleybo@amazon.com,
 Christoph Hellwig <hch@lst.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Gal Pressman <galpress@amazon.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Tomer Tayar <ttayar@habana.ai>, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Jun 18, 2021 at 2:36 PM Oded Gabbay <ogabbay@kernel.org> wrote:
> User process might want to share the device memory with another
> driver/device, and to allow it to access it over PCIe (P2P).
>
> To enable this, we utilize the dma-buf mechanism and add a dma-buf
> exporter support, so the other driver can import the device memory and
> access it.
>
> The device memory is allocated using our existing allocation uAPI,
> where the user will get a handle that represents the allocation.
>
> The user will then need to call the new
> uAPI (HL_MEM_OP_EXPORT_DMABUF_FD) and give the handle as a parameter.
>
> The driver will return a FD that represents the DMA-BUF object that
> was created to match that allocation.
>
> Signed-off-by: Oded Gabbay <ogabbay@kernel.org>
> Reviewed-by: Tomer Tayar <ttayar@habana.ai>

Mission acomplished, we've gone full circle, and the totally-not-a-gpu
driver is now trying to use gpu infrastructure. And seems to have
gained vram meanwhile too. Next up is going to be synchronization
using dma_fence so you can pass buffers back&forth without stalls
among drivers.

Bonus points for this being at v3 before it shows up on dri-devel and
cc's dma-buf folks properly (not quite all, I added the missing
people).

I think we roughly have two options here

a) Greg continues to piss off dri-devel folks while trying to look
cute&cuddly and steadfastly claiming that this accelator doesn't work
like any of the other accelerator drivers we have in drivers/gpu/drm.
All while the driver ever more looks like one of these other accel
drivers.

b) We finally do what we should have done years back and treat this as
a proper driver submission and review it on dri-devel instead of
sneaking it in through other channels because the merge criteria
dri-devel has are too onerous and people who don't have experience
with accel stacks for the past 20 years or so don't like them.

"But this probably means a new driver and big disruption!"

Not my problem, I'm not the dude who has to come up with an excuse for
this because I didn't merge the driver in the first place. I do get to
throw a "we all told you so" in though, but that's not helping.

Also I'm wondering which is the other driver that we share buffers
with. The gaudi stuff doesn't have real struct pages as backing
storage, it only fills out the dma_addr_t. That tends to blow up with
other drivers, and the only place where this is guaranteed to work is
if you have a dynamic importer which sets the allow_peer2peer flag.
Adding maintainers from other subsystems who might want to chime in
here. So even aside of the big question as-is this is broken.

Currently only 2 drivers set allow_peer2peer, so those are the only
ones who can consume these buffers from device memory. Pinging those
folks specifically.

Doug/Jason from infiniband: Should we add linux-rdma to the dma-buf
wildcard match so that you can catch these next time around too? At
least when people use scripts/get_maintainers.pl correctly. All the
other subsystems using dma-buf are on there already (dri-devel,
linux-media and linaro-mm-sig for android/arm embedded stuff).

Cheers, Daniel



> ---
>  include/uapi/misc/habanalabs.h | 28 +++++++++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
>
> diff --git a/include/uapi/misc/habanalabs.h b/include/uapi/misc/habanalabs.h
> index a47a731e4527..aa3d8e0ba060 100644
> --- a/include/uapi/misc/habanalabs.h
> +++ b/include/uapi/misc/habanalabs.h
> @@ -808,6 +808,10 @@ union hl_wait_cs_args {
>  #define HL_MEM_OP_UNMAP                        3
>  /* Opcode to map a hw block */
>  #define HL_MEM_OP_MAP_BLOCK            4
> +/* Opcode to create DMA-BUF object for an existing device memory allocation
> + * and to export an FD of that DMA-BUF back to the caller
> + */
> +#define HL_MEM_OP_EXPORT_DMABUF_FD     5
>
>  /* Memory flags */
>  #define HL_MEM_CONTIGUOUS      0x1
> @@ -878,11 +882,26 @@ struct hl_mem_in {
>                         /* Virtual address returned from HL_MEM_OP_MAP */
>                         __u64 device_virt_addr;
>                 } unmap;
> +
> +               /* HL_MEM_OP_EXPORT_DMABUF_FD */
> +               struct {
> +                       /* Handle returned from HL_MEM_OP_ALLOC. In Gaudi,
> +                        * where we don't have MMU for the device memory, the
> +                        * driver expects a physical address (instead of
> +                        * a handle) in the device memory space.
> +                        */
> +                       __u64 handle;
> +                       /* Size of memory allocation. Relevant only for GAUDI */
> +                       __u64 mem_size;
> +               } export_dmabuf_fd;
>         };
>
>         /* HL_MEM_OP_* */
>         __u32 op;
> -       /* HL_MEM_* flags */
> +       /* HL_MEM_* flags.
> +        * For the HL_MEM_OP_EXPORT_DMABUF_FD opcode, this field holds the
> +        * DMA-BUF file/FD flags.
> +        */
>         __u32 flags;
>         /* Context ID - Currently not in use */
>         __u32 ctx_id;
> @@ -919,6 +938,13 @@ struct hl_mem_out {
>
>                         __u32 pad;
>                 };
> +
> +               /* Returned in HL_MEM_OP_EXPORT_DMABUF_FD. Represents the
> +                * DMA-BUF object that was created to describe a memory
> +                * allocation on the device's memory space. The FD should be
> +                * passed to the importer driver
> +                */
> +               __u64 fd;
>         };
>  };
>
> --
> 2.25.1
>


--
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

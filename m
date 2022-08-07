Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DA76E58BBCF
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Aug 2022 18:09:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A379047F13
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Aug 2022 16:09:42 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 274EE4043A
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Aug 2022 16:09:40 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id a7so12645056ejp.2
        for <linaro-mm-sig@lists.linaro.org>; Sun, 07 Aug 2022 09:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=kfa6rkgDz6nn/pdEUYBNKDa4YqJiKITb3f8OdRtzvmk=;
        b=COXRpdfLeS6/eF9rAZR77z4MCuaK1+JKWGBD5kceZ0kJ4DchZJT725v+jCGmSJ2imB
         y4LN5N4cEput2dmnjPpZCBYcshfj1bs6YZZGHxlscSVTNzWVaENtU7E4kmIpbVVltmxT
         aQR3xi0sFHgRyzSUKNZpdZSBzbY1h2hGdEnQL8xZFEG5MuIqRLMHqwmsW4LTGQAJbbqR
         AMgWQCf4vme8WZ6+QAduQY1FuWKGKZdhHldfKg9FgkriLIxratMMFGJYpcQyxffBS5lV
         klJLgyjrydzzporrpp+caJV3uKT77YXMDjWuOvl1b7gggzDYCfyawoTvo8nU4h4lU114
         y/Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=kfa6rkgDz6nn/pdEUYBNKDa4YqJiKITb3f8OdRtzvmk=;
        b=M0SHieFfsTneaPO3hL89ZiTP+zx6tF9m5ySIQOfemulOzWNsVOYtmjZy8n/TMeBmjA
         4gra9Ozm4yN0gqmkbqgOVh8Mxyeg7v9eoJmvgy2BLD2frzJPt3Kkapm9xkfCit5lSiTf
         XnmDezbSducJ2XhuIC2wFA3d2Y75lY1z4KA5DZR/VeYuuemE1IUu2fU0ovhwGfvg+y5G
         rdMmXdIIHpiNZKI2xhIN6gHtvzhSWROt4+IX165+PlCtou6NueCBaveMUM4edr65Ugbz
         e1OvX4kIZKN4TSd3+8iDX4ElWGMzU1rrhzI7uHHWURAjinHE+u/nJlxUm0TXnZLV8g6/
         MZJQ==
X-Gm-Message-State: ACgBeo1AKmg1bE42Vq4qwzaKBUo2vog/ulyLzw7TwtRNv/1yRmxHn+jA
	JyiNh9623K/RzGU1G8O9jvs=
X-Google-Smtp-Source: AA6agR63DksStqDlJzPXUBqN0Z2rFKAzOT4xKMjjaRhnc3EuWCBYaX7QAw6Iot6h6qj8HoZIIlqggw==
X-Received: by 2002:a17:907:6d15:b0:730:da23:5b5c with SMTP id sa21-20020a1709076d1500b00730da235b5cmr10391598ejc.325.1659888579044;
        Sun, 07 Aug 2022 09:09:39 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:f019:ef7b:173c:a9d2? ([2a02:908:1256:79a0:f019:ef7b:173c:a9d2])
        by smtp.gmail.com with ESMTPSA id gj6-20020a170907740600b0072b31307a79sm3984470ejc.60.2022.08.07.09.09.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Aug 2022 09:09:38 -0700 (PDT)
Message-ID: <3d2083aa-fc6c-6875-3daf-e5abe45fb762@gmail.com>
Date: Sun, 7 Aug 2022 18:09:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>
References: <20220729170744.1301044-1-robdclark@gmail.com>
 <20220729170744.1301044-2-robdclark@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20220729170744.1301044-2-robdclark@gmail.com>
Message-ID-Hash: BUJTTWHDBNZ4GBT2G5WLMTL6OSMWVFWF
X-Message-ID-Hash: BUJTTWHDBNZ4GBT2G5WLMTL6OSMWVFWF
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf: Add ioctl to query mmap info
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BUJTTWHDBNZ4GBT2G5WLMTL6OSMWVFWF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 29.07.22 um 19:07 schrieb Rob Clark:
> From: Rob Clark <robdclark@chromium.org>
>
> This is a fairly narrowly focused interface, providing a way for a VMM
> in userspace to tell the guest kernel what pgprot settings to use when
> mapping a buffer to guest userspace.
>
> For buffers that get mapped into guest userspace, virglrenderer returns
> a dma-buf fd to the VMM (crosvm or qemu).

Wow, wait a second. Who is giving whom the DMA-buf fd here?

My last status was that this design was illegal and couldn't be 
implemented because it requires internal knowledge only the exporting 
driver can have.

@Daniel has anything changed on that is or my status still valid?

Regards,
Christian.

>    In addition to mapping the
> pages into the guest VM, it needs to report to drm/virtio in the guest
> the cache settings to use for guest userspace.  In particular, on some
> architectures, creating aliased mappings with different cache attributes
> is frowned upon, so it is important that the guest mappings have the
> same cache attributes as any potential host mappings.
>
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>   drivers/dma-buf/dma-buf.c    | 26 ++++++++++++++++++++++++++
>   include/linux/dma-buf.h      |  7 +++++++
>   include/uapi/linux/dma-buf.h | 28 ++++++++++++++++++++++++++++
>   3 files changed, 61 insertions(+)
>
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index 32f55640890c..d02d6c2a3b49 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -326,6 +326,29 @@ static long dma_buf_set_name(struct dma_buf *dmabuf, const char __user *buf)
>   	return 0;
>   }
>   
> +static long dma_buf_info(struct dma_buf *dmabuf, const void __user *uarg)
> +{
> +	struct dma_buf_info arg;
> +
> +	if (copy_from_user(&arg, uarg, sizeof(arg)))
> +		return -EFAULT;
> +
> +	switch (arg.param) {
> +	case DMA_BUF_INFO_VM_PROT:
> +		if (!dmabuf->ops->mmap_info)
> +			return -ENOSYS;
> +		arg.value = dmabuf->ops->mmap_info(dmabuf);
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	if (copy_to_user(uarg, &arg, sizeof(arg)))
> +		return -EFAULT;
> +
> +	return 0;
> +}
> +
>   static long dma_buf_ioctl(struct file *file,
>   			  unsigned int cmd, unsigned long arg)
>   {
> @@ -369,6 +392,9 @@ static long dma_buf_ioctl(struct file *file,
>   	case DMA_BUF_SET_NAME_B:
>   		return dma_buf_set_name(dmabuf, (const char __user *)arg);
>   
> +	case DMA_BUF_IOCTL_INFO:
> +		return dma_buf_info(dmabuf, (const void __user *)arg);
> +
>   	default:
>   		return -ENOTTY;
>   	}
> diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> index 71731796c8c3..6f4de64a5937 100644
> --- a/include/linux/dma-buf.h
> +++ b/include/linux/dma-buf.h
> @@ -283,6 +283,13 @@ struct dma_buf_ops {
>   	 */
>   	int (*mmap)(struct dma_buf *, struct vm_area_struct *vma);
>   
> +	/**
> +	 * @mmap_info:
> +	 *
> +	 * Return mmapping info for the buffer.  See DMA_BUF_INFO_VM_PROT.
> +	 */
> +	int (*mmap_info)(struct dma_buf *);
> +
>   	int (*vmap)(struct dma_buf *dmabuf, struct iosys_map *map);
>   	void (*vunmap)(struct dma_buf *dmabuf, struct iosys_map *map);
>   };
> diff --git a/include/uapi/linux/dma-buf.h b/include/uapi/linux/dma-buf.h
> index b1523cb8ab30..a41adac0f46a 100644
> --- a/include/uapi/linux/dma-buf.h
> +++ b/include/uapi/linux/dma-buf.h
> @@ -85,6 +85,32 @@ struct dma_buf_sync {
>   
>   #define DMA_BUF_NAME_LEN	32
>   
> +
> +/**
> + * struct dma_buf_info - Query info about the buffer.
> + */
> +struct dma_buf_info {
> +
> +#define DMA_BUF_INFO_VM_PROT      1
> +#  define DMA_BUF_VM_PROT_WC      0
> +#  define DMA_BUF_VM_PROT_CACHED  1
> +
> +	/**
> +	 * @param: Which param to query
> +	 *
> +	 * DMA_BUF_INFO_BM_PROT:
> +	 *     Query the access permissions of userspace mmap's of this buffer.
> +	 *     Returns one of DMA_BUF_VM_PROT_x
> +	 */
> +	__u32 param;
> +	__u32 pad;
> +
> +	/**
> +	 * @value: Return value of the query.
> +	 */
> +	__u64 value;
> +};
> +
>   #define DMA_BUF_BASE		'b'
>   #define DMA_BUF_IOCTL_SYNC	_IOW(DMA_BUF_BASE, 0, struct dma_buf_sync)
>   
> @@ -95,4 +121,6 @@ struct dma_buf_sync {
>   #define DMA_BUF_SET_NAME_A	_IOW(DMA_BUF_BASE, 1, __u32)
>   #define DMA_BUF_SET_NAME_B	_IOW(DMA_BUF_BASE, 1, __u64)
>   
> +#define DMA_BUF_IOCTL_INFO	_IOWR(DMA_BUF_BASE, 2, struct dma_buf_info)
> +
>   #endif

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

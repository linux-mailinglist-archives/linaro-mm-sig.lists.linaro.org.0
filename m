Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7AEC76C2C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Nov 2025 01:24:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE62C3F99F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Nov 2025 00:24:00 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by lists.linaro.org (Postfix) with ESMTPS id 6F5603F92D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Nov 2025 00:23:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=IFdehBM2;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.46 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-882475d8851so16503836d6.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 16:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1763684626; x=1764289426; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HeoQ6A9zQA47pPVQ4WN0R1Mr0WB5BGBDvzJz+/SIjn4=;
        b=IFdehBM2jFlhycEfWqiD4QpoUU352+ZJfYLYmWt5Ly0mh978NXtVC3jmm+3cMGwsai
         FX1tdFrL0ncVzvogicBd24jQpj79HyljUWvgSwtW+AHm2DFpZ01m51SccHM6UCrlhrnb
         48O8zJ/z2gYTRoSwop+wbrUZSavSQkL36OJlYsIAl+6LqOjXQJBhZIgPWjTql3cIrlpp
         Jk34gEVm0EESanFgXNkQajUinm0GBJmBpor9tc9/ZfQOtXU0X2UHIQn3hwVnVk744fb8
         gmoyiRZGjqHcpJhme41OVTvNe28nQxyeT0nGOiXiotKPv5FdWfwq0Sszb2jBgoXsa5jT
         S5oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763684626; x=1764289426;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HeoQ6A9zQA47pPVQ4WN0R1Mr0WB5BGBDvzJz+/SIjn4=;
        b=Z2ye4SsPh7NwMylP3NoB4H71j2yi2qu5Dagvi/zSZFuFsrmb9uexsJmAVcID9pzZb/
         nPdGLTj+ADM2cOOAjg6kYgbdI0tRkdnLrkROGo7bvpuIBV7RK8aXXLgkQTZwRIoVykMR
         JpnPRl+8ZKk2p23Isu6qZabK9X+7dOK37GBjJwjPBlrzOAU1GXTXJ1ZGh5igcduQ5NOi
         wXvoeUS91QGVWmFlrHF0SvWHZBjL23cVJkcPixpSNQoGN1mM09oP55WfD7GSGWlLSFyE
         LoQXDJ3wknaWN1D3P9TXatR9q/WFMBc+/lGl/4USodYGlDNR11csAfOBFUxF61vFVI6Y
         sBqA==
X-Forwarded-Encrypted: i=1; AJvYcCV8SBbXwCam89d+d0BGh0aFml1XNJy2wN2/4n18x2p/dOIQ9oNeok3DpVGwa5RD5ttEYMf2r+hOU70Zd+Dv@lists.linaro.org
X-Gm-Message-State: AOJu0Yzc7pZji0eTHg5J7euG/SRv02Hp54QqJKJ7OjuqZqhyejnYNmW3
	isXoaUWOfRtqWg84DyO7OJhJyYFLObi0Tpk5Slf34RouJxlpb4rTDTOMN/CgK/gpJwg=
X-Gm-Gg: ASbGncvGA4hAQxh2Yofi3XTb5XKoLQjK/PU9qjm5ajY4tBP38Xsunda4E5/XfIsKabg
	Ix95pHKCwvhwcFRTJAAHXuwQnpG4poIGCyzH/bjJ3NHUqqkI6dRpZf/YL00qAbjv3BGL8akTt2t
	zPTK3zq72dKlX1+jUMXybAH1pgknlUvwjEcc3gf2V6Aj5QljPM/4SxDniKvPYjBSS1YWLSHMGuB
	GTwnXLvoFbf865VI8j/4LZwIDd/HyTHL1iNmMhXa5Cat6zitADl2MKM2RYUQe/vzrA7EyjLvn3N
	rSrTCVyXRRSyGyZJ+vzfZrQOFMzjtaWzjaHdWevVxWhPJxp4fFXcGAk6RdkD1Hh8B8IhBdpnTa6
	e9Fgc1lj+Kk6Isle+e4PzYzwzRCpIwF53Uf+kZLP9X5+QvpYZUBMQieDJtZSmHoIogST4/imTev
	5PZ4O/mufyFaCWNmtu2ww1LTmZbUETqpWHiINShJwKiBll2gFCtJF7eN/k
X-Google-Smtp-Source: AGHT+IF9fpUZC0KSEi60qYSTXqU5TN/0kv3Br6v+7st2smYcT5XQOEwOWy/F2amvDq4QuChbOli5Vg==
X-Received: by 2002:ad4:5d42:0:b0:880:2c08:88e with SMTP id 6a1803df08f44-8847c5206f8mr8425876d6.45.1763684625945;
        Thu, 20 Nov 2025 16:23:45 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8846e472ae1sm27645766d6.22.2025.11.20.16.23.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 16:23:45 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vMEwC-000000016i7-2ZE0;
	Thu, 20 Nov 2025 20:23:44 -0400
Date: Thu, 20 Nov 2025 20:23:44 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Alex Williamson <alex@shazbot.org>
Message-ID: <20251121002344.GC233636@ziepe.ca>
References: <20251120-dmabuf-vfio-v9-0-d7f71607f371@nvidia.com>
 <20251120-dmabuf-vfio-v9-10-d7f71607f371@nvidia.com>
 <20251120170413.050ccbb5.alex@shazbot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251120170413.050ccbb5.alex@shazbot.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.46:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.219.46:from,47.55.120.4:received];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6F5603F92D
X-Spamd-Bar: ---
Message-ID-Hash: XAY2OD6Y6BX4ZRKGRTAKJPI6BPVLG2LW
X-Message-ID-Hash: XAY2OD6Y6BX4ZRKGRTAKJPI6BPVLG2LW
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardenin
 g@vger.kernel.org, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 10/11] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XAY2OD6Y6BX4ZRKGRTAKJPI6BPVLG2LW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Nov 20, 2025 at 05:04:13PM -0700, Alex Williamson wrote:

> @@ -2501,7 +2501,7 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>  err_undo:
>         list_for_each_entry_from_reverse(vdev, &dev_set->device_list,
>                                          vdev.dev_set_list) {
> -               if (__vfio_pci_memory_enabled(vdev))
> +               if (vdev->vdev.open_count && __vfio_pci_memory_enabled(vdev))
>                         vfio_pci_dma_buf_move(vdev, false);
>                 up_write(&vdev->memory_lock);
>         }
> 
> Any other suggestions?  This should be the only reset path with this
> nuance of affecting non-opened devices.  Thanks,

Seems reasonable, but should it be in __vfio_pci_memory_enabled() just
to be robust?

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

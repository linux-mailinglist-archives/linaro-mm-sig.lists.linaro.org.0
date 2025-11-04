Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 81333C2E824
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 04 Nov 2025 01:06:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B3FF3F820
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Nov 2025 00:06:33 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by lists.linaro.org (Postfix) with ESMTPS id 7E42F3F61F
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Nov 2025 00:06:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=Ofcc1QCj;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.52 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-7ea50f94045so58856866d6.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Nov 2025 16:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1762214781; x=1762819581; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q7OiTJylN5oi1hTg8WqhFTipXs7uLO/TT2JZJ2yqlyQ=;
        b=Ofcc1QCjoUDMhq2bU2aAPaHqr/2WDe2a1rabG9ocrGKxoluBir9myfABb1aVonYCnp
         jNBswHpUw4DkmDEdso8ywYcq5VH9SVGAmr3N0yyf85tvzMUwp62tWoLNyw0bVqdv+tB6
         Qxvusj2Bqy9pzqi3sdCbDNOPhm3pS3xSdGPaNkIMCgpmh2sjQXsL/KClUEYZlAJ2G7/B
         dQFBy0esXFGBMVHumCEtMhw4QmcXVz1EOTrI4Fx8VXNMIFvConf4vTTvmT9G2l8x3yBq
         vaLL3Pr0ttCmVRBDVDPUAsMtX8bzs9t51grlbtholumeqcblnNKFslGveeybV8Zt/kzO
         o3Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762214781; x=1762819581;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q7OiTJylN5oi1hTg8WqhFTipXs7uLO/TT2JZJ2yqlyQ=;
        b=RVJnUQgqm2aoeErUOnd4xMhk4La44gJraO/83ti5J9sbYmfOB5esFmyLDEYWjL52DF
         r1+PhVstzBkBe9eYAYVQN0wkJU8IDr7ercG53rq2cL+WwxpJ4ZfT1AmxceFcVNDZWI9i
         dYmFpn2suXmSy3BPMEDrCawqLF3z30C6gaRMmYL9TpRYT7up6KvtGzJaPclmhnxdkjni
         9VIRfB88DNmVRU9RCjCx78i0kgw695ma6PsrRudxmbQcqJfL3kCpyLSqBPZEthPvVBfu
         tRA/P1WEbcsbAbM0FiDXJG7prWgPzKHj63JPwJSoJuyUQBImUJxlllj03I7UDfxazl80
         7aJw==
X-Forwarded-Encrypted: i=1; AJvYcCUzCDFjNDuFJafq39qdfpoUDrFVDYIZZRBgO+9NeGrHrsfOEcIwhtmgj3e3wiFjqkJsFu3EUIoA0btb6VC/@lists.linaro.org
X-Gm-Message-State: AOJu0YwdMvYzKnCq/U4G37nrYr6zg/Zba8T5yE6Uko94UqYGGjx6MtE+
	i4y6yuqP54C6YDoSj0ED/4dwdDnTT6PYC5kobFLJvtBG9w8/iIZFyTbHkM4oGmGLe4w=
X-Gm-Gg: ASbGnctGJ7cI5+hQ4LU19RplOmB+gt8IYS7D365XWz9R7ClomuK0Ql0OQduFkHi3bDl
	k8PPkPgUW2zvWDXjQAXycL+eR2SZ/iQR6uybNvAJJnN4rh6g0X03oJ/sNkpNbG9SBHLcSB9Xk7E
	L14yRYtQLCUaXyTW7fD0heSCT3GFZoaAsTz4q5ZLBu1TeDLFeHf7+gWOorIqbhWOgYaLfArLFMz
	gfvH6RrH46DHpqloEY17tHrKL5dt5hzNYOx2bzLDK5/TPi3xYPU6WQuVyA5sWaFQ023AbVRKFq2
	uYKIG5DDSUcve8NGSFH7wMay6wnAJ5VgYUwv1I0SVepe9ct1wPIJXmUypaVqJ8kIGS2YC6Degqr
	Ju0SwR6jOi9upk7deq4jCef+IcU0D5240KrPC9cRc7uukdnLNwSr31lMRCFvhJo60pgO5yxuami
	FRazwuOHC89g8z9E3PsIMnlDDmXFpQNJdfKhZiGjzVPnS7F50UCQUFD6GJ
X-Google-Smtp-Source: AGHT+IHFK/K4+Si4Ey1hcSvTZvkQdBHi3cl9Mtxmbm7oCurYD+QrPfezppoNLd/K4DVB+Xp/dYAQ0Q==
X-Received: by 2002:a05:6214:f22:b0:87c:270b:aadb with SMTP id 6a1803df08f44-880623a4a0emr16632746d6.16.1762214780972;
        Mon, 03 Nov 2025 16:06:20 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88060de9b44sm10817116d6.20.2025.11.03.16.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 16:06:19 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vG4Z1-00000006cRs-0csK;
	Mon, 03 Nov 2025 20:06:19 -0400
Date: Mon, 3 Nov 2025 20:06:19 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Alex Mastro <amastro@fb.com>
Message-ID: <20251104000619.GG1204670@ziepe.ca>
References: <20251102-dmabuf-vfio-v6-0-d773cff0db9f@nvidia.com>
 <aQkLcAxEn4qmF3c4@devgpu015.cco6.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aQkLcAxEn4qmF3c4@devgpu015.cco6.facebook.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7E42F3F61F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.52:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[34];
	DWL_DNSWL_BLOCKED(0.00)[ziepe.ca:dkim];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	RCVD_COUNT_THREE(0.00)[3];
	URIBL_BLOCKED(0.00)[ziepe.ca:mid,ziepe.ca:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[47.55.120.4:received,209.85.219.52:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Action: no action
Message-ID-Hash: I554VAPOQNB663KJWEMFVG2LEHGADPLM
X-Message-ID-Hash: I554VAPOQNB663KJWEMFVG2LEHGADPLM
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Williamson <alex.williamson@redhat.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.l
 inaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 00/11] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I554VAPOQNB663KJWEMFVG2LEHGADPLM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Nov 03, 2025 at 12:07:12PM -0800, Alex Mastro wrote:
> On Sun, Nov 02, 2025 at 10:00:48AM +0200, Leon Romanovsky wrote:
> > Changelog:
> > v6:
> >  * Fixed wrong error check from pcim_p2pdma_init().
> >  * Documented pcim_p2pdma_provider() function.
> >  * Improved commit messages.
> >  * Added VFIO DMA-BUF selftest.
> >  * Added __counted_by(nr_ranges) annotation to struct vfio_device_feature_dma_buf.
> >  * Fixed error unwind when dma_buf_fd() fails.
> >  * Document latest changes to p2pmem.
> >  * Removed EXPORT_SYMBOL_GPL from pci_p2pdma_map_type.
> >  * Moved DMA mapping logic to DMA-BUF.
> >  * Removed types patch to avoid dependencies between subsystems.
> >  * Moved vfio_pci_dma_buf_move() in err_undo block.
> >  * Added nvgrace patch.
> 
> Thanks Leon. Attaching a toy program which sanity tests the dma-buf export UAPI
> by feeding the allocated dma-buf into an dma-buf importer (libibverbs + CX-7).

Oh! Here is my toy program to do the same with iommufd as the importer:

#define _GNU_SOURCE
#define __user
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include "include/uapi/linux/vfio.h"
#include "include/uapi/linux/iommufd.h"
#include <string.h>
#include <sys/mman.h>
#include <errno.h>

int main(int argc, const char *argv[])
{
	int vfio_dev_fd, iommufd_fd, ret;

	// Open the per-device VFIO file (e.g., /dev/vfio/devices/vfio3)
	vfio_dev_fd = open("/dev/vfio/devices/vfio0", O_RDWR);
	if (vfio_dev_fd < 0) {
		perror("Failed to open VFIO per-device file");
		return 1;
	}

	// Open /dev/iommu for iommufd
	iommufd_fd = open("/dev/iommu", O_RDWR);
	if (iommufd_fd < 0) {
		perror("Failed to open /dev/iommu");
		close(vfio_dev_fd);
		return 1;
	}

	// Bind device FD to iommufd
	struct vfio_device_bind_iommufd bind = {
		.argsz = sizeof(bind),
		.flags = 0,
		.iommufd = iommufd_fd,
	};
	ret = ioctl(vfio_dev_fd, VFIO_DEVICE_BIND_IOMMUFD, &bind);
	if (ret < 0) {
		perror("VFIO_DEVICE_BIND_IOMMUFD failed");
		close(vfio_dev_fd);
		close(iommufd_fd);
		return 1;
	}

	// Allocate an IOAS (I/O address space)
	struct iommu_ioas_alloc alloc_data = {
		.size = sizeof(alloc_data),
		.flags = 0,
	};
	ret = ioctl(iommufd_fd, IOMMU_IOAS_ALLOC, &alloc_data);
	if (ret < 0) {
		perror("IOMMU_IOAS_ALLOC failed");
		close(vfio_dev_fd);
		close(iommufd_fd);
		return 1;
	}

	// Attach the device to the IOAS
	struct vfio_device_attach_iommufd_pt attach_data = {
		.argsz = sizeof(attach_data),
		.flags = 0,
		.pt_id = alloc_data.out_ioas_id,
	};
	ret = ioctl(vfio_dev_fd, VFIO_DEVICE_ATTACH_IOMMUFD_PT, &attach_data);
	if (ret < 0) {
		perror("VFIO_DEVICE_ATTACH_IOMMUFD_PT failed");
		close(vfio_dev_fd);
		close(iommufd_fd);
		return 1;
	}

#if 0
	int mapfd = memfd_create("test", MFD_CLOEXEC);
	if (mapfd == -1) {
		perror("memfd_create failed");
		return 1;
	}
	ftruncate(mapfd, 4096);
#else
	struct dmabuf_arg {
		struct vfio_device_feature hdr;
		struct vfio_device_feature_dma_buf dma_buf;
		struct vfio_region_dma_range range;
	} dma_buf_feature = {
		.hdr = { .argsz = sizeof(dma_buf_feature),
			 .flags = VFIO_DEVICE_FEATURE_GET |
				  VFIO_DEVICE_FEATURE_DMA_BUF },
		.dma_buf = { .region_index = VFIO_PCI_BAR0_REGION_INDEX,
			     .open_flags = O_CLOEXEC,
			     .nr_ranges = 1 },
		.range = { .length = 4096 },
	};
	ret = ioctl(vfio_dev_fd, VFIO_DEVICE_FEATURE, &dma_buf_feature);
	if (ret < 0) {
		perror("VFIO_DEVICE_FEATURE_GET failed");
		return 1;
	}
	int mapfd = ret;
#endif

	struct iommu_ioas_map_file map_file = {
		.size = sizeof(map_file),
		.flags = IOMMU_IOAS_MAP_WRITEABLE | IOMMU_IOAS_MAP_READABLE,
		.ioas_id = alloc_data.out_ioas_id,
		.fd = mapfd,
		.start = 0,
		.length = 4096,
	};
	ret = ioctl(iommufd_fd, IOMMU_IOAS_MAP_FILE, &map_file);
	if (ret < 0) {
		perror("IOMMU_IOAS_MAP_FILE failed");
		return 1;
	}

	printf("Successfully attached device to IOAS ID: %u\n",
	       alloc_data.out_ioas_id);

	close(vfio_dev_fd);
	close(iommufd_fd);

	return 0;
}
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

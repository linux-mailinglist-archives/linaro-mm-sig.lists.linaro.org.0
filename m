Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IINqGgJXCGr1kAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:37:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB6055B7A6
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:37:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E286B404BB
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:37:36 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 3E9663F7E9
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 11:37:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=MPbcEsl3;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7CDC043F06;
	Sat, 16 May 2026 11:37:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFD8CC19425;
	Sat, 16 May 2026 11:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1778931444;
	bh=8LMT1TIsNVvknyrLg69MYjeZewa0zQXqnKxuS28eL+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MPbcEsl37NrIoi6gkugdu76RGm+1B1heXb0avm7x3+5zUv3BKP6/+DAud92stKTIy
	 kVV9us91F1CU39b8ftDkbwPgqSfZj9wdQ9o3dELEOwiFS9+rHKDvQMw0oRxHPIFE8N
	 CasPNjOXD9veE4YohlCf8+S1cGeUkKhoENg/gaYk=
Date: Sat, 16 May 2026 13:37:28 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julian Orth <ju.orth@gmail.com>
Message-ID: <2026051653-walmart-morally-3be7@gregkh>
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <20260516-jorth-syncobj-v1-12-88ede9d98a81@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260516-jorth-syncobj-v1-12-88ede9d98a81@gmail.com>
X-Spamd-Bar: /
Message-ID-Hash: VGDBDZ56XWDR6GQA4M56Y5XSDCDXG7JZ
X-Message-ID-Hash: VGDBDZ56XWDR6GQA4M56Y5XSDCDXG7JZ
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/12] misc/syncobj: add new device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VGDBDZ56XWDR6GQA4M56Y5XSDCDXG7JZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 0BB6055B7A6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [6.59 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[linuxfoundation.org:s=korg];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linuxfoundation.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[shuttle.de:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: add header
X-Spam: Yes

On Sat, May 16, 2026 at 01:06:15PM +0200, Julian Orth wrote:
> This device makes the DRM_IOCTL_SYNCOBJ_* ioctls available via a
> dedicated device. This allows applications to use syncobjs without
> having to open device nodes in /dev/dri, on systems that don't have any
> such nodes, or on systems whose devices don't support the
> DRIVER_SYNCOBJ_TIMELINE feature.
> 
> Wayland uses syncobjs as its buffer synchronization mechanism. Most
> compositors use the DRM_IOCTL_SYNCOBJ_EVENTFD ioctl to perform a pure
> CPU wait for syncobj point. DRM devices are not involved in this process
> except insofar that a DRM device needs to be used to access the ioctl.
> 
> Similarly, a software-rendered client might perform rendering on a
> dedicated thread and use the wayland syncobj protocol to submit frames
> before they finish rendering. Again, this does not involve DRM devices
> except insofar ... as above.
> 
> As an added benefit, this device removes the need to translate between
> file descriptors and handles.
> 
> Signed-off-by: Julian Orth <ju.orth@gmail.com>
> ---
>  Documentation/userspace-api/ioctl/ioctl-number.rst |   1 +
>  drivers/misc/Kconfig                               |  10 +
>  drivers/misc/Makefile                              |   1 +
>  drivers/misc/syncobj.c                             | 404 +++++++++++++++++++++
>  include/uapi/linux/syncobj.h                       |  75 ++++
>  5 files changed, 491 insertions(+)
> 
> diff --git a/Documentation/userspace-api/ioctl/ioctl-number.rst b/Documentation/userspace-api/ioctl/ioctl-number.rst
> index 331223761fff..5e140ae5735e 100644
> --- a/Documentation/userspace-api/ioctl/ioctl-number.rst
> +++ b/Documentation/userspace-api/ioctl/ioctl-number.rst
> @@ -395,6 +395,7 @@ Code  Seq#    Include File                                             Comments
>                                                                         <mailto:michael.klein@puffin.lb.shuttle.de>
>  0xCC  00-0F  drivers/misc/ibmvmc.h                                     pseries VMC driver
>  0xCD  01     linux/reiserfs_fs.h                                       Dead since 6.13
> +0xCD  00-0F  uapi/linux/syncobj.h
>  0xCE  01-02  uapi/linux/cxl_mem.h                                      Compute Express Link Memory Devices
>  0xCF  02     fs/smb/client/cifs_ioctl.h
>  0xDD  00-3F                                                            ZFCP device driver see drivers/s390/scsi/
> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> index 00683bf06258..c1e7749bd356 100644
> --- a/drivers/misc/Kconfig
> +++ b/drivers/misc/Kconfig
> @@ -644,6 +644,16 @@ config MCHP_LAN966X_PCI
>  	    - lan966x-miim (MDIO_MSCC_MIIM)
>  	    - lan966x-switch (LAN966X_SWITCH)
>  
> +config SYNCOBJ_DEV
> +	tristate "DRM syncobj device (/dev/syncobj)"
> +	depends on DRM

If this is a drm-only thing, then please put it in the drm subdirs, not
in drivers/misc/ as that would imply that I have to maintain this, not
the DRM developers :)

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
